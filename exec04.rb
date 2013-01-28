#Exec No 4
require "pp"

if ARGV.length % 2 == 0

	hash = { }

	i = 0

	while i < ( ARGV.length )
  
  	 	 hash[ ARGV[ i ] ] = ARGV[ i + 1 ]

  		 i += 2
	
	end

	pp hash

else

	puts "Invalid input. Each key pairs should have two values { :Key => Value } "

end


