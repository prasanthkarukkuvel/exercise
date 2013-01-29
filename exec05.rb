#Exec No 5
begin

raise "Invalid number of arguments. Input should have DIR and FILENAME. Ex: Dir Filename" if ARGV.length != 2 

if File.directory? ARGV[0]+"/"

	if File.exist? ARGV[0]+"/"+ARGV[1]
		
		m = 0

		f = 0

		File.open(ARGV[0]+"/"+ARGV[1], "r") do |n|

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

rescue => e

	puts e.message

end




