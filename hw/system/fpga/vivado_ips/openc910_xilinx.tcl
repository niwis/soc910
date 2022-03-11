# Copyright 2022 ETH Zurich and University of Bologna.
# Solderpad Hardware License, Version 0.51, see LICENSE for details.
# SPDX-License-Identifier: SHL-0.51
#
# Nils Wistoff <nwistoff@iis.ee.ethz.ch>

# Create project
set project openc910_xilinx

create_project $project ./openc910_xilinx -force -part xc7k325tffg900-2
set_property XPM_LIBRARIES XPM_MEMORY [current_project]

# Global includes (Bender does not support these)
# add_files -norecurse ../../../vendor/thead_openc910/gen_rtl/cpu/rtl/cpu_cfig.h
# set_property is_global_include true [get_files  ../../../vendor/thead_openc910/gen_rtl/cpu/rtl/cpu_cfig.h]
# add_files -norecurse ../../../vendor/thead_openc910/gen_rtl/mmu/rtl/sysmap.h
# set_property is_global_include true [get_files  ../../../vendor/thead_openc910/gen_rtl/mmu/rtl/sysmap.h]

# Define sources
source define-sources.tcl

# # Package IP
# set_property top cpu_sub_system_axi [current_fileset]
# update_compile_order -fileset sources_1
# synth_design -rtl -name rtl_1

# ipx::package_project -root_dir . -vendor ethz.ch -library user -taxonomy /UserIP -set_current true

# # Clock interface
# ipx::infer_bus_interface pll_cpu_clk xilinx.com:signal:clock_rtl:1.0 [ipx::current_core]
# ipx::infer_bus_interface per_clk xilinx.com:signal:clock_rtl:1.0 [ipx::current_core]

# # Reset interface
# ipx::infer_bus_interface pad_cpu_rst_b xilinx.com:signal:reset_rtl:1.0 [ipx::current_core]
# ipx::infer_bus_interface pad_yy_dft_clk_rst_b xilinx.com:signal:reset_rtl:1.0 [ipx::current_core]