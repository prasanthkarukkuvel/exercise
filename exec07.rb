#Exec No 7
require "readfile"
begin

raise "Invalid number of arguments. Input should have DIR and FILENAME. Ex: Dir Filename" if ARGV.length != 2 

if File.directory? ARGV[0]+"/"

	if File.exist? ARGV[0]+"/"+ARGV[1]
		
		Readfile.read(ARGV[0],ARGV[1])

	else

		raise "File not found Exception"

	end

else

	raise "Directory not found Exception"

end

rescue => e

	puts e.message

end




