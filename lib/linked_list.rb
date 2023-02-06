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
        else
            @head.next_node = Node.new(data)
            current_node = current_node.next_node
            while(!current_node.next_node.nil?)
                current_node = current_node.next_node
            end
        end
        data
    end

    def to_string
        to_string = []
        if @head.nil?
            to_string = []
        else
            current_node = @head
            while(!current_node.nil?)
                to_string << current_node.data
                current_node = current_node.next_node
            end
        end
        to_string.join(" ")
    end
    def prepend(data)
        @count += 1
        if @head == nil
            @head = Node.new(data)
        else
            # require 'pry'; binding.pry
            current_head = Node.new(data)
            current_head.next_node = @head
            @head = current_head
        end
    end
end