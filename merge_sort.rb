
arr = [3, 2, 5, 9, 0, 7, 1, 6, 8]
ex = [2, 0, 3, 1]

def merge_sort(n)
  copy = n.dup
  middle = (copy.length / 2).ceil
  left = copy.slice(0, middle)
  right = copy.slice(middle, copy.length)
  if left.length == 1 && right.length == 1
    merged_array = []
    sorted_array = []
    if left[0] < right[0]
      merged_array.push(left[0])
      merged_array.push(right[0])
      # sorted_array.push(merged_array)
    else
      merged_array.push(right[0])
      merged_array.push(left[0])
      # sorted_array.push(merged_array)
    end
    # p merged_array
    # p sorted_array
  else
    if copy.length > 2
      left_sorted = merge_sort(left)
      p left_sorted
      # p sorted_array.push(merged_array)
      right_sorted = merge_sort(right)
      p right_sorted
      # p sorted_array.push(merged_array)
      p sorted_array = merge_sort(left_sorted + right_sorted)
    end
  end
end

merge_sort(ex)