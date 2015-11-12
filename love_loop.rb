puts "Roses are red, violets are ____"
answer = gets.chomp.downcase

if (answer == "blue")
	puts "I love you!"
end

while (answer != "blue")
	puts "No, but I still love you"
	puts "Roses are red, violets are ____"
answer = gets.chomp.downcase
	if (answer == "blue")
	puts "I love you!"
	end
end


