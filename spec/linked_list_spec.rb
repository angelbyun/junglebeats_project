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
    it "checks the next_node method" do
        list = LinkedList.new
        list.append("doop")

        expect(list.head.next_node).to eq(nil)
    end
    it "adds a count" do
        list = LinkedList.new
        list.append("doop")

        expect(list.count).to eq(1)
    end
    it "adds a list" do
        list = LinkedList.new
        list.append("doop")

        expect(list.to_string).to eq("doop")
    end
    it "modifies data" do
        list = LinkedList.new
        list.append("doop")
        list.append("deep")

        expect(list.append("deep")).to eq("deep")
    end
    it "modifies count" do
        list = LinkedList.new
        list.append("doop")
        list.append("deep")

    expect(list.count).to eq(2)
    end
    it "modifies a list" do
        list = LinkedList.new
        list.append("doop")
        list.append("deep")

    expect(list.to_string).to eq("doop deep")
    end
    it "modifies data" do
        list = LinkedList.new
        list.append("plop")

        expect(list.append("plop")).to eq("plop")
    end
    it "modifies a list" do
        list = LinkedList.new
        list.append("plop")

        expect(list.to_string).to eq("plop")
    end
    it "modifies data" do
        list = LinkedList.new
        list.append("plop")
        list.append("suu")

        expect(list.append("suu")).to eq("suu")
    end
    it "adds a prepend" do
        list = LinkedList.new
        list.append("plop")
        list.append("suu")
        list.prepend("dop")

        expect(list.head.data).to eq("dop")
    end
    it "modifies a list" do
        list = LinkedList.new
        list.append("plop")
        list.append("suu")
        list.prepend("dop")

        expect(list.to_string).to eq("dop plop suu")
    end
    it "modifies count" do
        list = LinkedList.new
        list.append("plop")
        list.append("suu")
        list.prepend("dop")

        expect(list.count).to eq(3)
    end
    it "adds an inserts" do
        list = LinkedList.new
        list.append("plop")
        list.append("suu")
        list.prepend("dop")
        list.insert(1, "woo")

        expect(list.insert(1, "woo")).to eq("woo")
    end
    it "modifies a list" do
        list = LinkedList.new
        list.append("plop")
        list.append("suu")
        list.prepend("dop")
        list.insert(1, "woo")
        
        expect(list.to_string).to eq("dop woo plop suu")
    end
    it "modifies a list" do
        list = LinkedList.new
        list.append("deep")
        list.append("woo")
        list.append("shi")
        list.append("shu")
        list.append("blop")
        # require 'pry'; binding.pry

        expect(list.to_string).to eq("deep woo shi shu blop")
    end
end



