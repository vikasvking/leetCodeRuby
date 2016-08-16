class Queue
    # Initialize your data structure here.
    attr_accessor :s
    def initialize
        @s=Array.new
    end

    # @param {Integer} x
    # @return {void}
    def push(x)
        @s.push(x)
    end

    # @return {void}
    def pop
        return @s.shift
    end

    # @return {Integer}
    def peek
        if !@s.empty?
            return @s[0]
        else
            return nil
        end
    end

    # @return {Boolean}
    def empty
        return @s.empty?
    end
end