class JungleBeat
    attr_accessor   :list
                    :count

    def initialize
        @list = LinkedList.new
        @count = 0
    end

    def append(data)
        @count += 1
        sounds = data.split
        sounds.each do |sound|
            # require 'pry'; binding.pry
            list.append(sound)
        end
        sounds.join(" ")
    end
end