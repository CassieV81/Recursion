
arr = [3, 2, 5, 9, 0, 7, 1, 2, 6]
ex = [2, 0]

def merge_sort(n)
  if n.length <= 1
    return n
  end
  middle = n.length / 2
  left = n[0...middle]
  right = n[middle..-1]
  p left
  p right

end

merge_sort(arr)