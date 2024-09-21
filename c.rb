n = gets.chomp.to_i
prev_elem = nil

for i in 1..n
    curr_elem = gets.chomp.to_i
    
    unless curr_elem == prev_elem
        puts curr_elem
    end
    prev_elem = curr_elem

end