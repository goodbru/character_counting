require 'byebug'

def count_letters(string)
	letters = Hash.new(0) 
	string.split('').each { |letter| letters[letter] += 1
}
letters
end 


def count_letters_indices(string)
	letters = Hash.new 
	string.split('').each_with_index do |letter, index| 
		#byebug
		if letters[letter]
		#puts "#{letter}" + ", " + "#{index}"
		letters[letter] = letters[letter] + ", " + index.to_s 
		else
			letters[letter] = index.to_s
		end
	end 
letters
end 

puts "lighthouse in the house..."
puts count_letters("lighthouse in the house...")
puts count_letters_indices("the house...")