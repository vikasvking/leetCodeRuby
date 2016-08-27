class NumArray

    # Initialize your data structure here.
    # @param {Integer[]} nums
    def initialize(nums)
        @a=nums.each_with_object([0]){|num,memo|
            memo << memo[-1]+num
        }
    end

    # @param {Integer} i
    # @param {Integer} j
    # @return {Integer}
    def sum_range(i, j)
        @a[j+1]-@a[i]
    end
end

# Your NumArray object will be instantiated and called as such:
# num_array = NumArray.new(nums)
# num_array.sum_range(0, 1)
# num_array.sum_range(0, 2)