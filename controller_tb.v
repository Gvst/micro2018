/*****************************************************************************************************
* Description:                 Test bench of Counter for controller
*
* Author:                      xxx xxx
*
* Email:                       xxx@xxx.xxx
*
* Rev History:
*       <Author>        <Date>        <Hardware>     <Version>        <Description>
*       xxx xxx    2018-03-10 23:00       --           1.00             Create
*****************************************************************************************************/
`timescale 100ps / 1ps

module controller_tb;

    reg [4:0] SM1_issued_this_cycle = 2;
    reg clk_sm;
    reg [7:0] SM1_voltage = 1;
    wire [4:0] SM1_remaining;
   

    full_control_system DUT(
    .clk_sm(clk_sm),
    .SM1_voltage(SM1_voltage),
    .SM1_issued_this_cycle(SM1_issued_this_cycle),
    .SM1_remaining(SM1_remaining)
    );


    initial
    begin

        $dumpfile("controller.vcd"); 
        $dumpvars(0, controller_tb); 

        
        
        clk_sm = 0;
        

        #20001
        $finish;

    end
    always
        #15 clk_sm = !clk_sm;
endmodule
