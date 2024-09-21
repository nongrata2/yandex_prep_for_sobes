def recurs(string, diff, n)
  bracket_arr = []
  if diff > 0 && string.length < 2*n - 1 && string.count('(') < n
    string1 = string + '('
    string2 = string + ')'
    diff1 = diff + 1
    diff2 = diff - 1

    recurs(string1, diff1, n)
    recurs(string2, diff2, n)
  
  elsif diff > 0 && string.length < 2*n - 1 && string.count('(') == n
    recurs(string += ')', diff -= 1, n)
  
  elsif diff == 0 && string.length < 2*n - 1
    recurs(string += '(', diff += 1, n)
  
  elsif string.length == 2*n -1
    string1 = string + ')'
    puts string1
  end
end

n = gets.chomp.to_i

diff = 1
start_str = '('

recurs(start_str, diff, n)