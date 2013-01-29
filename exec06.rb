#Exec No 5
def readfile(a,b)

if File.directory? a+"/"

	if File.exist? a+"/"+b
		
		m = 0

		f = 0

		File.open(a+"/"+b, "r") do |n|

    		while (line = n.gets)

    		  	if line.chomp('\n').split(",")[2] == 'M'

    		  		m = m + 1

    		  	elsif line.chomp('\n').split(",")[2] == 'F'

    		  		f = f + 1

    		  	end

	   		end

	   		puts "Male : #{m}  Female : #{f}"

		end

	else

		raise "File not found Exception"

	end

else

	raise "Directory not found Exception"

end

end

begin

raise "Invalid number of arguments. Input should have DIR and FILENAME. Ex: Dir Filename" if ARGV.length != 2 

	readfile(ARGV[0],ARGV[1])

rescue => e

	puts e.message

end





