
arr = [3, 2, 5, 9, 0, 7, 1, 2, 6, 8, 2, 5, 9, 0, 4]
ex = [2, 0]

def merge_sort(n)
  if n.length <= 1
    return n
  else
    middle = n.length / 2
    left = n[0...middle]
    right = n[middle..-1]
    
    left = merge_sort(left)
    right = merge_sort(right)

    sorted_array = []
    until left.empty? || right.empty?
      if left.first < right.first
        sorted_array.push(left.shift)
      else
        sorted_array.push(right.shift)
      end
    end
    sorted_array + left + right
  end
end

p merge_sort(arr)