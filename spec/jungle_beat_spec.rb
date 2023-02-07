require 'rspec'
require './lib/node'
require './lib/linked_list'
require './lib/jungle_beat'

RSpec.describe JungleBeat do
    it "exists" do
        list = JungleBeat.new
    
    expect(list).to be_instance_of(JungleBeat)
    end

    it "has a head" do
        list = JungleBeat.new
        list.head

        expect(list.head).to eq(nil)
    end

    it "adds data" do
        list = JungleBeat.new
        list.append("deep doo ditt")

        expect(list.head.data).to eq("deep doo ditt")
    end

    it "modifies data" do
        list = JungleBeat.new
        list.append("deep doo ditt")

        expect(list.head.data).to eq("deep")
    end
end