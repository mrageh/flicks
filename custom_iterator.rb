numbers = (1..10).to_a

def my_select(array)
  results = []
  array.each do |arr|
    results << arr if yield(arr)
  end
  results
end

puts my_select(numbers) {|n| n.even?}
