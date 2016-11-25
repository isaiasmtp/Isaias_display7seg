`timescale 1ns/1ns

module tdecodificador7seg;

	logic [3:0] in;
	logic [6:0] out;

	decodificador7seg dut (.in(in), .out(out));
	byte a;

	initial

	begin
	for(a=0;a<=9;a++)
	
		begin
			in = a;
			#10;
		end
		
	end



	initial
	begin
		$monitor("Valor entrado=%d, saida=%7b",in,out);
	end

endmodule