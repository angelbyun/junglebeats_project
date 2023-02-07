class LinkedList
    attr_reader :head,
                :count,
                :index 
    def initialize
        @head = nil
        @count = 0
        @index = 0
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
        data
    end

    def to_string
        if @head.nil?
            return ""
        else
            current_node = @head
            all_data = [current_node.data]
            while !current_node.next_node.nil?
                current_node = current_node.next_node
                all_data << current_node.data
            end
        end
        all_data.join(" ")
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

    def insert(index, data)
        current_node = @head
        previous_node = nil

        index.times do
            previous_node = current_node
        current_node = current_node.next_node
        end
        new_node = Node.new(data)
        if @count == 0
            @head = new_node
        else
            # require 'pry'; binding.pry
            new_node.next_node = current_node
            previous_node.next_node = new_node
        end
        new_node.data
    end
    def find(index, amount)
        current_node = @head
        string = []
        index.times do
        current_node = current_node.next_node
        # require 'pry'; binding.pry
        end
        amount.times do
        string << current_node.data
        current_node = current_node.next_node
        end
    # require 'pry'; binding.pry
    string.join(" ")
    end
    def includes?(data)
        current_node = @head
        string = [" "]
        string.include?(" ")
        until string.include?(" ")
        end
    end
end