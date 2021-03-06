//$Id: comb.genpp,v 1.5 2006/06/13 06:01:59 smd Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARM Physical IP, INC.
//
//Copyright (c) 1993-2006  ARM Physical IP, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with ARM Physical IP, Inc.  In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NAND2BX1TS (Y, AN, B);
output Y;
input AN, B;

  not (Ax, AN);
  nand (Y, Ax, B);
/*  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify  */
endmodule // NAND2BX1TS
`endcelldefine
