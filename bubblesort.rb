def bubble_sort (arr)
  arr.each do |x|
    arr.each_with_index do |value,key|
      if key != (arr.length()-1)
        if value > arr[key+1]
          arr[key],arr[key+1] = arr[key+1],arr[key]
        end
      end
    end
  end
  puts arr
end

begin
puts bubble_sort([3,2,1]);
end
