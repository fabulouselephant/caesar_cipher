def bubble_sort(nums) 
    loop do
        swapped = false
        (nums.length - 1).times do |i|
            if nums[i] > nums[i + 1]
                nums[i], nums[i + 1] = nums[i + 1], nums[i]
                swapped = true
            end
        end
        break unless swapped
    end
    p nums
end

puts bubble_sort([4,3,78,2,0,2])