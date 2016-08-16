class Stack
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
        return @s.pop
    end

    # @return {Integer}
    def top
        if !@s.empty?
            return @s.last
        else
            return nil
        end
    end

    # @return {Boolean}
    def empty
        return @s.empty?
    end
end