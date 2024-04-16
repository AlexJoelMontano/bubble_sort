def bubble_sort(nums)
    n = nums.length
    loop do
      swapped = false
      (n-1).times do |i|
        if nums[i] > nums[i+1] then
          nums[i], nums[i+1] = nums[i+1], nums[i]
          swapped = true
        end
      end
      break if not swapped
    end
    nums
  end
  
  generated = Array.new(6) { rand(1...100)  }
  puts "Generated numbers: #{generated}"
  puts "\nSorted numbers: #{bubble_sort(generated)}"