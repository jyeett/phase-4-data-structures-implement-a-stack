# your code here
class Stack
    def initialize(limit = -1)
        @stack = []
        @limit = limit
    end

    def push(value)
        if @limit == -1
            @stack.push(value)
        elsif @stack.length >= @limit
            raise "Stack Overflow"
        else
            @stack.push(value)
        end
    end

    def pop
        @stack.pop()
    end

    def peek
        @stack[-1]
    end

    def size
        @stack.length
    end

    def empty?
        size == 0
    end

    def full?
        size == @limit
    end

    def search(value)
        i = @stack.length - 1
        count = 0
        while @stack[i] != value 
            if i == 0
                count = -1
                break
            end
            count = count + 1
            i = i - 1
        end
        count
    end
end