class LinkedList
    attr_reader :head,
                :count
    def initialize
        @head = nil
        @count = 0
    end
    def append(data)
        @count += 1
        if @head == nil
            @head = Node.new(data)
        end
    end

    def to_string
        @head.data
    end
end