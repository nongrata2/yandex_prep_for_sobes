max_count = 0
curr_count = 0

n = gets.chomp.to_i

for i in 1..n

    curr_elem = gets.chomp.to_i
    curr_elem == 1 ? curr_count+=1 : curr_count = 0

    if curr_count > max_count 
        max_count = curr_count
    end
end

puts max_count