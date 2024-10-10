def merge_sort(arr)
  return arr if arr.length == 1 # base case

  left = merge_sort(arr.slice!(0, arr.length/2.to_i))
  right = merge_sort(arr)

  res = []

  p1 = 0    # left_section pointer from beginning
  p2 = 0    # right_section pointer from beginning

  while p1 < left.length && p2 < right.length
    if left[p1] <= right[p2]
      res.push(left[p1])
      p1 += 1
    else
      res.push(right[p2])
      p2 += 1
    end
  end

  if p1 < left.length
    res += left.slice(p1...left.length)
  end

  if p2 < right.length
    res += right.slice(p2...right.length)
  end

  return res

end

p merge_sort([3, 2, 1, 13, 8, 5, 0, 1])         # [0, 1, 1, 2, 3, 5, 8, 13]
p merge_sort([105, 79, 100, 110])               # [79, 100, 105, 110]
p merge_sort([100, -55, 1, 0, -200, 567, 3])    # [-200, -55, 0, 1, 3, 100, 567]