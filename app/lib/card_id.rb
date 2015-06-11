#! /usr/bin/env ruby

class CardId

def self.steps(number)
rbin = ('%08b' % number).reverse

ret = ""
rbin.scan(/./).each_with_index do |digit, index|
  action = if digit == '1'
		   'discard' 
	   else
		   'keep'
	   end
  ret += "Insert needle into hole #{index + 1}, lift and #{action}<br>"
end
ret
end
end
