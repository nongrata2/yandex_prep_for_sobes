def bfs_min_distance(graph, start, destination)
    n = graph.length
    visited = Array.new(n, false)
    distance = Array.new(n, -1)
    
    queue = []
    queue.push(start)
    visited[start] = true
    distance[start] = 0
  
    until queue.empty?
      current = queue.shift
      
      for i in 0...n
        if graph[current][i] == 1 && !visited[i]
          queue.push(i)
          visited[i] = true
          distance[i] = distance[current] + 1
          # return if found destination point
          return distance[destination] if i == destination
        end
      end
    end
    distance[destination]
  end

n = gets.chomp.to_i

arr = []

for i in 1..n
  x, y = gets.chomp.split(' ')
  x = x.to_i
  y = y.to_i
  arr.push([x, y])
end

max_dist = gets.chomp.to_i
from, to = gets.chomp.split(' ')
from = from.to_i
to = to.to_i
dist_matr = Array.new(n) { Array.new(n) }

for i in 1..n
    for j in 1..n
        if i != j
            (arr[i - 1][0] - arr[j - 1][0]).abs + (arr[i - 1][1] - arr[j - 1][1]).abs <= max_dist ? dist_matr[i - 1][j - 1] = 1 :  dist_matr[i - 1][j - 1] = 0
        end
    end
end

min_distance = bfs_min_distance(dist_matr, from-1, to-1)

puts min_distance == -1 ? -1 : min_distance