class JungleBeat
    attr_accessor   :list

    def initialize
        @list = LinkedList.new
    end

    def count
        list.count
    end

    def append(data)
        sounds = data.split
        sounds.each do |sound|
            # require 'pry'; binding.pry
            list.append(sound)
        end
        sounds.join(" ")
    end

    def play
        new_sound = list.head.data
        next_sound = list.head
        while new_sound != nil
            next_sound = next_sound.next_node
            `say -r 500 -v Alex #{new_sound}`
        end
    end
end