#!/bin/bash
# SMVDU TITAN-X — Run All Module Simulations
# Usage: ./run_all_sims.sh [module_name]
# If module_name is given, runs only that module. Otherwise runs all 63.

set -e
REPO="$(cd "$(dirname "$0")" && pwd)"
INCLUDES="$REPO/includes"
STUBS="$INCLUDES/stdcell_stubs.v"

PASS=0; FAIL=0; ERR=0; TOTAL=0

run_test() {
  local DIR=$1; local MOD=$2; shift 2; local EXTRA="$@"
  TOTAL=$((TOTAL+1))
  cd "$REPO/$DIR" 2>/dev/null || { printf "⚠️  DIR_ERR    : %-30s\n" "$MOD"; ERR=$((ERR+1)); return; }

  # Find RTL file (might be named differently)
  local RTL="${MOD}.v"
  [ ! -f "$RTL" ] && RTL=$(ls *.v 2>/dev/null | grep -v "^tb_" | head -1)
  [ -z "$RTL" ] && { printf "⚠️  NO_RTL     : %-30s\n" "$MOD"; ERR=$((ERR+1)); return; }

  COMPILE=$(iverilog -I"$INCLUDES" -g2012 -o sim_auto.vvp "$RTL" $EXTRA "tb_${MOD}.v" "$STUBS" 2>&1)
  if echo "$COMPILE" | grep -qi "error"; then
    printf "❌ BUILD_ERR  : %-30s\n" "$MOD"
    ERR=$((ERR+1))
  else
    RESULT=$(timeout 30 vvp sim_auto.vvp 2>&1 | grep "VERDICT" | head -1)
    if echo "$RESULT" | grep -q "PASS"; then
      printf "✅ PASS       : %s\n" "$MOD"
      PASS=$((PASS+1))
    elif echo "$RESULT" | grep -q "FAIL"; then
      printf "❌ FAIL       : %s\n" "$MOD"
      FAIL=$((FAIL+1))
    else
      printf "⚠️  NO_VERDICT : %s\n" "$MOD"
      ERR=$((ERR+1))
    fi
  fi
  rm -f sim_auto.vvp
  cd "$REPO"
}

echo "============================================="
echo "  SMVDU TITAN-X — Full Verification Sweep"
echo "  $(date '+%Y-%m-%d %H:%M:%S')"
echo "============================================="

# Frontend
run_test frontend/rv_fetch rv_fetch
run_test frontend/rv_bpu rv_bpu
run_test frontend/rv_icache rv_icache
run_test frontend/rv_decode rv_decode

# Backend
run_test backend/rv_execute rv_execute
run_test backend/rv_pmp rv_pmp
run_test backend/rv_tlb rv_tlb
run_test backend/rv_fpu rv_fpu
run_test backend/rv_dcache rv_dcache
run_test backend/rv_writeback rv_writeback
run_test backend/rv_mem rv_mem
run_test backend/rv_ptw rv_ptw
run_test backend/rv_debug rv_debug
run_test backend/clint clint
run_test backend/plic plic
run_test backend/rv_monitor_core rv_monitor_core ../../frontend/rv_decode/rv_decode.v ../rv_execute/rv_execute.v
run_test backend/rv_mmu rv_mmu ../rv_ptw/rv_ptw.v ../rv_tlb/rv_tlb.v
run_test backend/rv_core_top rv_core_top \
  ../rv_mmu/rv_mmu.v ../rv_ptw/rv_ptw.v ../rv_tlb/rv_tlb.v \
  ../../frontend/rv_icache/rv_icache.v ../../frontend/rv_decode/rv_decode.v \
  ../../frontend/rv_fetch/rv_fetch.v ../../frontend/rv_bpu/rv_bpu.v \
  ../rv_fpu/rv_fpu.v ../rv_execute/rv_execute.v \
  ../rv_pmp/rv_pmp.v ../rv_dcache/rv_dcache.v ../rv_mem/rv_mem.v ../rv_writeback/rv_writeback.v

# Common
run_test common/cdc_sync cdc_sync
run_test common/fifo_sync fifo_sync
run_test common/fifo_async fifo_async
run_test common/reset_sync reset_sync

# Interconnect
run_test interconnect/axi4_crossbar axi4_crossbar
run_test interconnect/apb_bridge apb_bridge
run_test interconnect/axi4_to_ahb axi4_to_ahb
run_test interconnect/mmu_arbiter mmu_arbiter
run_test interconnect/ahb_to_apb ahb_to_apb
run_test interconnect/interconnect_mpu interconnect_mpu
run_test interconnect/qos_controller qos_controller

# Memory
run_test memory/sram_32x64_180nm sram_32x64_180nm
run_test memory/sram_512kx8_180nm sram_512kx8_180nm
run_test memory/l2_cache_ctrl l2_cache_ctrl
run_test memory/l2_cache_top l2_cache_top \
  ../l2_cache_ctrl/l2_cache_ctrl.v ../l2_snoop_filter/l2_snoop_filter.v \
  ../sram_512kx8_180nm/sram_512kx8_180nm.v ../sram_32x64_180nm/sram_32x64_180nm.v \
  ../l2_data_array/l2_data_array.v ../l2_tag_array/l2_tag_array.v
run_test memory/l2_data_array l2_data_array ../sram_32x64_180nm/sram_32x64_180nm.v
run_test memory/l2_tag_array l2_tag_array ../sram_32x64_180nm/sram_32x64_180nm.v
run_test memory/l2_snoop_filter l2_snoop_filter
run_test memory/ddr_ctrl_top ddr_ctrl_top ../ddr_scheduler/ddr_scheduler.v ../ddr_phy_if/ddr_phy_if.v
run_test memory/ddr_scheduler ddr_scheduler
run_test memory/ddr_phy_if ddr_phy_if

# Security
run_test security/secure_boot secure_boot
run_test security/envm_ctrl envm_ctrl
run_test security/ecdsa_engine ecdsa_engine
run_test security/drbg drbg

# Peripherals
run_test peripherals/trng trng
run_test peripherals/aes_engine aes_engine
run_test peripherals/sha256_engine sha256_engine
run_test peripherals/gpio_ctrl gpio_ctrl
run_test peripherals/spi_master spi_master
run_test peripherals/uart_16550 uart_16550
run_test peripherals/i2c_master i2c_master
run_test peripherals/can_controller can_controller
run_test peripherals/rtc rtc
run_test peripherals/watchdog_timer watchdog_timer
run_test peripherals/gem_ethernet gem_ethernet
run_test peripherals/gem_sgmii_pcs gem_sgmii_pcs
run_test peripherals/pcie_top pcie_top ../pcie_pipe_if/pcie_pipe_if.v

# Storage
run_test storage/mmc_controller mmc_controller
run_test storage/qspi_controller qspi_controller
run_test storage/usb_otg usb_otg

# Video
run_test video/hdmi_ctrl hdmi_ctrl
run_test video/isp_pipeline isp_pipeline
run_test video/mipi_csi2_rx mipi_csi2_rx
run_test video/vdma vdma

echo ""
echo "============================================="
echo "  PASS=$PASS  FAIL=$FAIL  ERRORS=$ERR  TOTAL=$TOTAL"
echo "============================================="

# Exit code: 0 if all pass, 1 otherwise
[ "$FAIL" -eq 0 ] && [ "$ERR" -eq 0 ] && exit 0 || exit 1
