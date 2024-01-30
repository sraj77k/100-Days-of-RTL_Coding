///////////////TEST BENCH////////////////////////////

module SRFLIPFLOP_tb();
 reg S, R;  
wire Q, Q_bar; 
SR_FLIPFLOP dut(S, R, Q, Q_bar);
initial begin
   S=0; R=0; #50;
   S=0; R=1; #50
   S=1; R=0; #50
   S=1; R=1; #50
   $monitor("S=%b, R=%b ==> Q=%b, Q_bar=%b # invalid state, so discount error",
             S, R, Q, Q_bar);
end
endmodule
