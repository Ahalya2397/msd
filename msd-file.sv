module file;
	initial begin
	int fd;
	int time_s;
	int MODE;
	int op;
	int addr;
	string line;
	string file_name;
	if($value$plusargs ("MODE=%0d", MODE))
		begin
		$display("Mode is debugging mode");
		end
	if($value$plusargs ("FILENAME=%0s", file_name))
		begin
		$display("File Name is %0s",file_name);
		end
	
	fd=$fopen(file_name,"r");
	if (fd==0)
		begin
		$display("Entered File name doesn't exist");
		end
	/*else
		begin 
		while ($fscanf (fd,"%0d %0d %0h",time_s,op,addr)==3) begin
		//$fgets(line,fd);
		//$fscanf (fd, "%0d %0d %0h",time_s,op,addr);
		if(MODE)
		begin
		$display("time=%0d ; operation=%0d; address=%0h", time_s,op,addr);
		end
		end
		end */
	/*if(MODE)
		begin
		$display("file is opened");
		end*/
	
	$fclose(fd);
	end
endmodule