// DESCRIPTION: Verilator: Verilog Test module
//
// A test for issue-2432
//
// This source code contains constructs that are valid in Verilog 2001 and
// SystemVerilog 2005/2009, but not in Verilog 1995. So it should fail if we
// set the language to be 1995, but not 2001.
//
// Compile only test, so no need for "All Finished" output.
//
// This file ONLY is placed into the Public Domain, for any use,
// without warranty, 2012 by Jeremy Bennett.
// SPDX-License-Identifier: CC0-1.0

module t;
  wire [3:0] x;
  assign x = 1'b1?4'hF:4'h1;
endmodule
