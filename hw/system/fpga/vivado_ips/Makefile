# Copyright 2022 ETH Zurich and University of Bologna.
# Solderpad Hardware License, Version 0.51, see LICENSE for details.
# SPDX-License-Identifier: SHL-0.51
#
# Nils Wistoff <nwistoff@iis.ee.ethz.ch>

MKFILE_PATH := $(abspath $(lastword $(MAKEFILE_LIST)))
MKFILE_DIR  := $(dir $(MKFILE_PATH))
ROOT        := ${MKFILE_DIR}../../../..

VIVADO := vivado

include $(ROOT)/util/Makefrag

openc910_xilinx: define-sources.tcl
	${VIVADO} -mode gui -source openc910_xilinx.tcl

define-sources.tcl:
	${BENDER} script vivado > $@

clean:
	rm -rf .Xil openc910_xilinx vivado* define-sources.tcl component.xml
