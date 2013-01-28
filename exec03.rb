#Exec No 3
if ARGV.length == 3

	puts ARGV[2].split(",").select{|x| x.to_i >= ARGV[0].to_i && x.to_i <= ARGV[1].to_i && x.to_i%5 == 0}.inject{|i,j| i.to_i + j.to_i }
	
else
	puts ' Invalid number of arguments, specify the third params as String "" ex: "1,2,34,56"'	
end
