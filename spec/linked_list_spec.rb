require 'rspec'
require './lib/node'
require './lib/linked_list'

RSpec.describe LinkedList do
    it 'exists' do
        list = LinkedList.new

        expect(list).to be_instance_of(LinkedList)
    end

    it 'has a head' do
        list = LinkedList.new
        list.head

        expect(list.head).to eq(nil)
    end
    it "adds data" do
        list = LinkedList.new
        list.append("doop")

        expect(list.head.data).to eq("doop")
    end

end



