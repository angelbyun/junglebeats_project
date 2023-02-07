class JungleBeat
    attr_reader :head
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
            new_node = @head
            while(!new_node.next_node.nil?)
                new_node = new_node.next_node
            end
            new_node.next_node = Node.new(data)
        end
    end
end