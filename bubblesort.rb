def bubble_sort (arr)
  arr.each_with_index do |value,key|
    if value > arr[key.next]
      value,arr[key.next] = arr[key.next],value
    end
  end
  return arr
end
begin
puts bubble_sort([2,6,8,3,5,9,12,1,3,2]);
end
