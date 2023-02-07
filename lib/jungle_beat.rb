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

    def play(data)
end