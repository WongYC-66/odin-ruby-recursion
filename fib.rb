#
def fibs(n)
  arr = []
  (0..n - 1).each do |v|
    if v== 0
      arr.push(0)
    elsif v <= 2
      arr.push(1)
    else
      arr.push(arr[-1] + arr[-2])
    end
  end
  arr
end

# recursive
def fibs_rec(n)
  if n == 1
    return [0]
  elsif n == 2
    return [0, 1]
  else
    prev = fibs_rec(n - 1)
    return fibs_rec(n - 1) + [prev[-1]+ prev[-2]]
  end
end

p fibs(8) 
puts 'This was printed recursively'
p fibs_rec(8)
p fibs(13) 
p fibs_rec(13)
p fibs(25) 
p fibs_rec(25)