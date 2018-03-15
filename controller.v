/*****************************************************************************************************
* Description:                 Controller for Demo
*
* Author:                      xxx xxx
*
* Email:                       xxx@xxx.xxx
*
* Rev History:
*       <Author>        <Date>             <Hardware>     <Version>        <Description>
*        xxx xxx        2018-03-10 23:00       --           1.00             Create
*****************************************************************************************************/
`timescale 100ps / 1ps
module full_control_system(
clk_sm,
SM1_voltage,
SM1_issued_this_cycle,
SM1_remaining,

SM2_voltage,
SM2_issued_this_cycle,
SM2_remaining,

SM3_voltage,
SM3_issued_this_cycle,
SM3_remaining,

SM4_voltage,
SM4_issued_this_cycle,
SM4_remaining,

SM5_voltage,
SM5_issued_this_cycle,
SM5_remaining,

SM6_voltage,
SM6_issued_this_cycle,
SM6_remaining,

SM7_voltage,
SM7_issued_this_cycle,
SM7_remaining,

SM8_voltage,
SM8_issued_this_cycle,
SM8_remaining,

SM9_voltage,
SM9_issued_this_cycle,
SM9_remaining,

SM10_voltage,
SM10_issued_this_cycle,
SM10_remaining,

SM11_voltage,
SM11_issued_this_cycle,
SM11_remaining,

SM12_voltage,
SM12_issued_this_cycle,
SM12_remaining,

SM13_voltage,
SM13_issued_this_cycle,
SM13_remaining,

SM14_voltage,
SM14_issued_this_cycle,
SM14_remaining,

SM15_voltage,
SM15_issued_this_cycle,
SM15_remaining,

SM16_voltage,
SM16_issued_this_cycle,
SM16_remaining
);

input clk_sm;

reg clk_controller = 0;
reg [5:0] counter = 0;

input [7:0] SM1_voltage;
input [4:0] SM1_issued_this_cycle;
output [4:0] SM1_remaining;
wire [4:0] SM1_issue_width_10_cycle;

input [7:0] SM2_voltage;
input [4:0] SM2_issued_this_cycle;
output [4:0] SM2_remaining;
wire [4:0] SM2_issue_width_10_cycle;

input [7:0] SM3_voltage;
input [4:0] SM3_issued_this_cycle;
output [4:0] SM3_remaining;
wire [4:0] SM3_issue_width_10_cycle;

input [7:0] SM4_voltage;
input [4:0] SM4_issued_this_cycle;
output [4:0] SM4_remaining;
wire [4:0] SM4_issue_width_10_cycle;

input [7:0] SM5_voltage;
input [4:0] SM5_issued_this_cycle;
output [4:0] SM5_remaining;
wire [4:0] SM5_issue_width_10_cycle;

input [7:0] SM6_voltage;
input [4:0] SM6_issued_this_cycle;
output [4:0] SM6_remaining;
wire [4:0] SM6_issue_width_10_cycle;

input [7:0] SM7_voltage;
input [4:0] SM7_issued_this_cycle;
output [4:0] SM7_remaining;
wire [4:0] SM7_issue_width_10_cycle;

input [7:0] SM8_voltage;
input [4:0] SM8_issued_this_cycle;
output [4:0] SM8_remaining;
wire [4:0] SM8_issue_width_10_cycle;

input [7:0] SM9_voltage;
input [4:0] SM9_issued_this_cycle;
output [4:0] SM9_remaining;
wire [4:0] SM9_issue_width_10_cycle;

input [7:0] SM10_voltage;
input [4:0] SM10_issued_this_cycle;
output [4:0] SM10_remaining;
wire [4:0] SM10_issue_width_10_cycle;

input [7:0] SM11_voltage;
input [4:0] SM11_issued_this_cycle;
output [4:0] SM11_remaining;
wire [4:0] SM11_issue_width_10_cycle;

input [7:0] SM12_voltage;
input [4:0] SM12_issued_this_cycle;
output [4:0] SM12_remaining;
wire [4:0] SM12_issue_width_10_cycle;

input [7:0] SM13_voltage;
input [4:0] SM13_issued_this_cycle;
output [4:0] SM13_remaining;
wire [4:0] SM13_issue_width_10_cycle;

input [7:0] SM14_voltage;
input [4:0] SM14_issued_this_cycle;
output [4:0] SM14_remaining;
wire [4:0] SM14_issue_width_10_cycle;

input [7:0] SM15_voltage;
input [4:0] SM15_issued_this_cycle;
output [4:0] SM15_remaining;
wire [4:0] SM15_issue_width_10_cycle;

input [7:0] SM16_voltage;
input [4:0] SM16_issued_this_cycle;
output [4:0] SM16_remaining;
wire [4:0] SM16_issue_width_10_cycle;


//The controller
controller DUT_controller(
.clk_controller(clk_controller),
.SM1_voltage(SM1_voltage),
.SM1_issue_width_10_cycle(SM1_issue_width_10_cycle),
.SM2_voltage(SM2_voltage),
.SM2_issue_width_10_cycle(SM2_issue_width_10_cycle),
.SM3_voltage(SM3_voltage),
.SM3_issue_width_10_cycle(SM3_issue_width_10_cycle),
.SM4_voltage(SM4_voltage),
.SM4_issue_width_10_cycle(SM4_issue_width_10_cycle),
.SM5_voltage(SM5_voltage),
.SM5_issue_width_10_cycle(SM5_issue_width_10_cycle),
.SM6_voltage(SM6_voltage),
.SM6_issue_width_10_cycle(SM6_issue_width_10_cycle),
.SM7_voltage(SM7_voltage),
.SM7_issue_width_10_cycle(SM7_issue_width_10_cycle),
.SM8_voltage(SM8_voltage),
.SM8_issue_width_10_cycle(SM8_issue_width_10_cycle),
.SM9_voltage(SM9_voltage),
.SM9_issue_width_10_cycle(SM9_issue_width_10_cycle),
.SM10_voltage(SM10_voltage),
.SM10_issue_width_10_cycle(SM10_issue_width_10_cycle),
.SM11_voltage(SM11_voltage),
.SM11_issue_width_10_cycle(SM11_issue_width_10_cycle),
.SM12_voltage(SM12_voltage),
.SM12_issue_width_10_cycle(SM12_issue_width_10_cycle),
.SM13_voltage(SM13_voltage),
.SM13_issue_width_10_cycle(SM13_issue_width_10_cycle),
.SM14_voltage(SM14_voltage),
.SM14_issue_width_10_cycle(SM14_issue_width_10_cycle),
.SM15_voltage(SM15_voltage),
.SM15_issue_width_10_cycle(SM15_issue_width_10_cycle),
.SM16_voltage(SM16_voltage),
.SM16_issue_width_10_cycle(SM16_issue_width_10_cycle)
);

//The issue width adjuster for SM1
issue_width_adjuster DUT_SM1_adjuster(
.clk_controller(clk_controller),
.clk_sm(clk_sm),
.SM_issued_this_cycle(SM1_issued_this_cycle),
.remaining(SM1_remaining),
.SM_issue_width_10_cycle(SM1_issue_width_10_cycle)
);

//The issue width adjuster for SM2
issue_width_adjuster DUT_SM2_adjuster(
.clk_controller(clk_controller),
.clk_sm(clk_sm),
.SM_issued_this_cycle(SM2_issued_this_cycle),
.remaining(SM2_remaining),
.SM_issue_width_10_cycle(SM2_issue_width_10_cycle)
);

//The issue width adjuster for SM3
issue_width_adjuster DUT_SM3_adjuster(
.clk_controller(clk_controller),
.clk_sm(clk_sm),
.SM_issued_this_cycle(SM3_issued_this_cycle),
.remaining(SM3_remaining),
.SM_issue_width_10_cycle(SM3_issue_width_10_cycle)
);

//The issue width adjuster for SM4
issue_width_adjuster DUT_SM4_adjuster(
.clk_controller(clk_controller),
.clk_sm(clk_sm),
.SM_issued_this_cycle(SM4_issued_this_cycle),
.remaining(SM4_remaining),
.SM_issue_width_10_cycle(SM4_issue_width_10_cycle)
);

//The issue width adjuster for SM5
issue_width_adjuster DUT_SM5_adjuster(
.clk_controller(clk_controller),
.clk_sm(clk_sm),
.SM_issued_this_cycle(SM5_issued_this_cycle),
.remaining(SM5_remaining),
.SM_issue_width_10_cycle(SM5_issue_width_10_cycle)
);

//The issue width adjuster for SM6
issue_width_adjuster DUT_SM6_adjuster(
.clk_controller(clk_controller),
.clk_sm(clk_sm),
.SM_issued_this_cycle(SM6_issued_this_cycle),
.remaining(SM6_remaining),
.SM_issue_width_10_cycle(SM6_issue_width_10_cycle)
);

//The issue width adjuster for SM7
issue_width_adjuster DUT_SM7_adjuster(
.clk_controller(clk_controller),
.clk_sm(clk_sm),
.SM_issued_this_cycle(SM7_issued_this_cycle),
.remaining(SM7_remaining),
.SM_issue_width_10_cycle(SM7_issue_width_10_cycle)
);

//The issue width adjuster for SM8
issue_width_adjuster DUT_SM8_adjuster(
.clk_controller(clk_controller),
.clk_sm(clk_sm),
.SM_issued_this_cycle(SM8_issued_this_cycle),
.remaining(SM8_remaining),
.SM_issue_width_10_cycle(SM8_issue_width_10_cycle)
);

//The issue width adjuster for SM9
issue_width_adjuster DUT_SM9_adjuster(
.clk_controller(clk_controller),
.clk_sm(clk_sm),
.SM_issued_this_cycle(SM9_issued_this_cycle),
.remaining(SM9_remaining),
.SM_issue_width_10_cycle(SM9_issue_width_10_cycle)
);

//The issue width adjuster for SM10
issue_width_adjuster DUT_SM10_adjuster(
.clk_controller(clk_controller),
.clk_sm(clk_sm),
.SM_issued_this_cycle(SM10_issued_this_cycle),
.remaining(SM10_remaining),
.SM_issue_width_10_cycle(SM10_issue_width_10_cycle)
);

//The issue width adjuster for SM11
issue_width_adjuster DUT_SM11_adjuster(
.clk_controller(clk_controller),
.clk_sm(clk_sm),
.SM_issued_this_cycle(SM11_issued_this_cycle),
.remaining(SM11_remaining),
.SM_issue_width_10_cycle(SM11_issue_width_10_cycle)
);

//The issue width adjuster for SM12
issue_width_adjuster DUT_SM12_adjuster(
.clk_controller(clk_controller),
.clk_sm(clk_sm),
.SM_issued_this_cycle(SM12_issued_this_cycle),
.remaining(SM12_remaining),
.SM_issue_width_10_cycle(SM12_issue_width_10_cycle)
);

//The issue width adjuster for SM13
issue_width_adjuster DUT_SM13_adjuster(
.clk_controller(clk_controller),
.clk_sm(clk_sm),
.SM_issued_this_cycle(SM13_issued_this_cycle),
.remaining(SM13_remaining),
.SM_issue_width_10_cycle(SM13_issue_width_10_cycle)
);

//The issue width adjuster for SM14
issue_width_adjuster DUT_SM14_adjuster(
.clk_controller(clk_controller),
.clk_sm(clk_sm),
.SM_issued_this_cycle(SM14_issued_this_cycle),
.remaining(SM14_remaining),
.SM_issue_width_10_cycle(SM14_issue_width_10_cycle)
);

//The issue width adjuster for SM15
issue_width_adjuster DUT_SM15_adjuster(
.clk_controller(clk_controller),
.clk_sm(clk_sm),
.SM_issued_this_cycle(SM15_issued_this_cycle),
.remaining(SM15_remaining),
.SM_issue_width_10_cycle(SM15_issue_width_10_cycle)
);

//The issue width adjuster for SM16
issue_width_adjuster DUT_SM16_adjuster(
.clk_controller(clk_controller),
.clk_sm(clk_sm),
.SM_issued_this_cycle(SM16_issued_this_cycle),
.remaining(SM16_remaining),
.SM_issue_width_10_cycle(SM16_issue_width_10_cycle)
);



//produce control_clock_signal: frequency = 1/20 SM clock signal
always @ (posedge clk_sm)
    begin
        counter = counter + 1;
        if(counter == 10 )
        begin
        clk_controller = !clk_controller;
        counter = 0;    
        end
        
    end


endmodule






//The controller module
module controller(
clk_controller,
SM1_voltage,
SM1_issue_width_10_cycle,
SM2_voltage,
SM2_issue_width_10_cycle,
SM3_voltage,
SM3_issue_width_10_cycle,
SM4_voltage,
SM4_issue_width_10_cycle,
SM5_voltage,
SM5_issue_width_10_cycle,
SM6_voltage,
SM6_issue_width_10_cycle,
SM7_voltage,
SM7_issue_width_10_cycle,
SM8_voltage,
SM8_issue_width_10_cycle,
SM9_voltage,
SM9_issue_width_10_cycle,
SM10_voltage,
SM10_issue_width_10_cycle,
SM11_voltage,
SM11_issue_width_10_cycle,
SM12_voltage,
SM12_issue_width_10_cycle,
SM13_voltage,
SM13_issue_width_10_cycle,
SM14_voltage,
SM14_issue_width_10_cycle,
SM15_voltage,
SM15_issue_width_10_cycle,
SM16_voltage,
SM16_issue_width_10_cycle,
);

input clk_controller;

input [7:0] SM1_voltage;
output [4:0] SM1_issue_width_10_cycle;
reg [4:0] SM1_issue_width_10_cycle=20;

input [7:0] SM2_voltage;
output [4:0] SM2_issue_width_10_cycle;
reg [4:0] SM2_issue_width_10_cycle=20;

input [7:0] SM3_voltage;
output [4:0] SM3_issue_width_10_cycle;
reg [4:0] SM3_issue_width_10_cycle=20;

input [7:0] SM4_voltage;
output [4:0] SM4_issue_width_10_cycle;
reg [4:0] SM4_issue_width_10_cycle=20;

input [7:0] SM5_voltage;
output [4:0] SM5_issue_width_10_cycle;
reg [4:0] SM5_issue_width_10_cycle=20;

input [7:0] SM6_voltage;
output [4:0] SM6_issue_width_10_cycle;
reg [4:0] SM6_issue_width_10_cycle=20;

input [7:0] SM7_voltage;
output [4:0] SM7_issue_width_10_cycle;
reg [4:0] SM7_issue_width_10_cycle=20;

input [7:0] SM8_voltage;
output [4:0] SM8_issue_width_10_cycle;
reg [4:0] SM8_issue_width_10_cycle=20;

input [7:0] SM9_voltage;
output [4:0] SM9_issue_width_10_cycle;
reg [4:0] SM9_issue_width_10_cycle=20;

input [7:0] SM10_voltage;
output [4:0] SM10_issue_width_10_cycle;
reg [4:0] SM10_issue_width_10_cycle=20;

input [7:0] SM11_voltage;
output [4:0] SM11_issue_width_10_cycle;
reg [4:0] SM11_issue_width_10_cycle=20;

input [7:0] SM12_voltage;
output [4:0] SM12_issue_width_10_cycle;
reg [4:0] SM12_issue_width_10_cycle=20;

input [7:0] SM13_voltage;
output [4:0] SM13_issue_width_10_cycle;
reg [4:0] SM13_issue_width_10_cycle=20;

input [7:0] SM14_voltage;
output [4:0] SM14_issue_width_10_cycle;
reg [4:0] SM14_issue_width_10_cycle=20;

input [7:0] SM15_voltage;
output [4:0] SM15_issue_width_10_cycle;
reg [4:0] SM15_issue_width_10_cycle=20;

input [7:0] SM16_voltage;
output [4:0] SM16_issue_width_10_cycle;
reg [4:0] SM16_issue_width_10_cycle=20;



always @ (posedge clk_controller)
begin
SM1_issue_width_10_cycle = 20 - SM1_voltage/10;
SM2_issue_width_10_cycle = 20 - SM2_voltage/10;
SM3_issue_width_10_cycle = 20 - SM3_voltage/10;
SM4_issue_width_10_cycle = 20 - SM4_voltage/10;
SM5_issue_width_10_cycle = 20 - SM5_voltage/10;
SM6_issue_width_10_cycle = 20 - SM6_voltage/10;
SM7_issue_width_10_cycle = 20 - SM7_voltage/10;
SM8_issue_width_10_cycle = 20 - SM8_voltage/10;
SM9_issue_width_10_cycle = 20 - SM9_voltage/10;
SM10_issue_width_10_cycle = 20 - SM10_voltage/10;
SM11_issue_width_10_cycle = 20 - SM11_voltage/10;
SM12_issue_width_10_cycle = 20 - SM12_voltage/10;
SM13_issue_width_10_cycle = 20 - SM13_voltage/10;
SM14_issue_width_10_cycle = 20 - SM14_voltage/10;
SM15_issue_width_10_cycle = 20 - SM15_voltage/10;
SM16_issue_width_10_cycle = 20 - SM16_voltage/10;
end

endmodule



//The issue width adjuster module
module issue_width_adjuster(
    clk_sm,
    clk_controller,
    SM_issue_width_10_cycle,
    SM_issued_this_cycle,
    remaining
    );

    
    input clk_sm;
    input clk_controller;
    input [4:0] SM_issue_width_10_cycle;
    input [4:0] SM_issued_this_cycle;

    output [4:0] remaining;

    reg [3:0] rst = 4'h0;
    reg [4:0] remaining = 5'h0;
    
    always @ (posedge clk_sm)
    begin
        remaining = remaining - SM_issued_this_cycle;
        rst = rst - 1;
        if (rst <= 0)
        begin
            remaining = SM_issue_width_10_cycle;
            rst = 4'ha;
        end
        
    end

endmodule
