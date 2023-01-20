
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
  p arr[0, n]
end
fibs(8)