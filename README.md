# FPGA3
FPGA Lab 3: Adder

1 bit adder:
Assign the sum to A xor B xor CarryIn. Assign the carryout using the truth table. 

Seven-Segment Display:
I used behavioral modeling with case statements to map each number to the correct set of display variables. It is important to note that the display is active low, meaning that the light for a segment turns on if that variable is set to 0.

ripple carry adder:
This was achieved by instantiating 2 1-bit adder modules. I made the carry out of the first adder the carry in for the second adder. Finally, the sum of the second adder was input to the segment converter module. This displayed the added number on the display.

lookahead adder: 
The sum bit was calculated similarly to the ripple carry adder: instantiating multiple 1-bit adders and assigning the carryout to be the carryin of the next instantiation. However, I calculated the carryout differently. This was done using assign statements. I initialized 2 2-bit variables: wp to be A and B, and wg to be A xor B. I also initialized wc, a 3 bit variable that stores the carry bit for the three stages of 2-bit addition: before the first addition, between additions, and after both additions. The three bits are assigned using wp, wg, and the other bits within wc.
