string1 = gets.chomp
string2 = gets.chomp

count = 0

string2.each_char do |x|
    if string1.include?(x)
        count += 1
    end
end

puts count