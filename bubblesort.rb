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

def bubble_sort_by (arr)
  arr.each do |x|
    arr.each_with_index do |value,key|
      if key != (arr.length()-1)
        if yield(value, arr[key+1]) > 0
          arr[key],arr[key+1] = arr[key+1],arr[key]
        end
      end
    end
  end
  puts arr
end

begin

testa = [3,2,1,6,9,1,2,4,6,5,3,10,1,2]
testb = ["hi","hello","hey","ko","have","a","nice","day"]
puts bubble_sort(testa);
bubble_sort_by(testb) do |left,right|
  left.length - right.length
end

end
