
arr = [3, 2, 5, 9, 0, 7, 1, 2, 6, 2, 0, 3, 1]
ex = [2, 0, 3, 1]

def merge_sort(n)
  copy = n.dup
  middle = (copy.length / 2).ceil
  left = copy.slice(0, middle)
  right = copy.slice(middle, copy.length)
  sorted_array = []
  merged_array = []
  if left.length == 1 || right.length == 1
    if left[0] < right[0]
      p merged_array.push(left[0])
      p merged_array.push(right[0])
    elsif left[0] > right[0]
      p merged_array.push(right[0])
      p merged_array.push(left[0])
    end
  elsif left.length > 1 && right.length > 1
    if copy.length > 2
      left = merge_sort(left)
      right = merge_sort(right)
      until left.empty? || right.empty?
        if left.first < right.first
          merged_array.push(left.shift)
        else
          merged_array.push(right.shift)
        end
      end
      sorted_array = merged_array + left + right
    end
    p sorted_array
  end
end

merge_sort(ex)