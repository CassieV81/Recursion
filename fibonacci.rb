
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
  arr = []
  if n <= 0
    return 0
  elsif n <= 2
    return 1
  else
    return fibs_rec(n - 1) + fibs_rec(n - 2)
  end
end
puts fibs_rec(8)