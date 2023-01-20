
def fibs(n)
  n1 = 0
  n2 = 1
  n3 = n
  arr = [0, 1]
  i = n
  while i >= 2 do
    arr.push(n3 = (n2 + n1))
    n1 = n2
    n2 = n3
    i -= 1
  end
  arr[0, n]
end
p fibs(8)

def fibs_rec(n)
  return [0, 1] if n <= 2
  fibs_array = fibs_rec(n - 1)
  fibs_array.push(fibs_array[fibs_array.length - 1] + fibs_array[fibs_array.length - 2])
  return fibs_array
end
p fibs_rec(8)