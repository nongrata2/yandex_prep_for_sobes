string1 = gets.chomp
string2 = gets.chomp

puts string1.chars.sort.join == string2.chars.sort.join ? 1 : 0