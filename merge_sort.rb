
arr = [3, 2, 5, 9, 0, 7, 1, 2]
ex = [2, 0, 3, 1]

def merge_sort(n)
  copy = n.dup
  middle = (copy.length / 2).ceil
  left = copy.slice(0, middle)
  right = copy.slice(middle, copy.length)
  if left.length == 1 && right.length == 1
    merged_array = []
    if left[0] < right[0]
      merged_array.push(left[0])
      merged_array.push(right[0])
    elsif left[0] > right[0]
      merged_array.push(right[0])
      merged_array.push(left[0])
    end
  elsif left.length > 1 && right.length > 1
    if copy.length > 2
      p left = merge_sort(left)
      p right = merge_sort(right)
      sorted_array = []
      until left.empty? || right.empty?
        if left.first < right.first
          sorted_array.push(left.shift)
        else
          sorted_array.push(right.shift)
        end
      end
      p sorted_array + left + right
    end
  end
end

merge_sort(arr)