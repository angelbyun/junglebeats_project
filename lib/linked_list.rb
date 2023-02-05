class LinkedList
    attr_reader :head,
                :count
    def initialize
        @head = nil
        @count = 0
    end
    def append(data)
        current_node = @head
        @count += 1
        if @head == nil
            @head = Node.new(data)
        else @head.next_node = Node.new(data)
            current_node = current_node.next_node
        end
        data
    end

    def to_string
        @head.data
    end
end