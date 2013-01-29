#Module for Exec No 7 - Save under Ruby193\lib\ruby\1.9.1\
module Readfile
    def self.read(a,b)
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
    end
end








