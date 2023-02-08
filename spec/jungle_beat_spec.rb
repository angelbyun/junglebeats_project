require 'rspec'
require './lib/node'
require './lib/linked_list'
require './lib/jungle_beat'

RSpec.describe JungleBeat do
    it "exists" do
        jb = JungleBeat.new
    
    expect(jb).to be_instance_of(JungleBeat)
    end

    it "has a head" do
        jb = JungleBeat.new
        jb.list.head

        expect(jb.list.head).to eq(nil)
    end

    it "adds data" do
        jb = JungleBeat.new
        jb.append("deep doo ditt")

        expect(jb.append("deep doo ditt")).to eq("deep doo ditt")
    end

    it "modifies data" do
        jb = JungleBeat.new
        jb.append("deep doo ditt")

        expect(jb.list.head.data).to eq("deep")
        expect(jb.list.head.next_node.data).to eq("doo")
    end

    it "adds data" do
        jb = JungleBeat.new
        jb.append("woo hoo shu")

        expect(jb.append("woo hoo shu")).to eq("woo hoo shu")
    end

    it "adds count" do
        jb = JungleBeat.new
        jb.append("deep doo ditt")
        jb.append("woo hoo shu")

        expect(jb.count).to eq(6)
    end
    it "modifies data" do
        jb = JungleBeat.new
        jb.append("deep doo ditt woo hoo shu")

        expect(jb.append("deep doo ditt woo hoo shu")).to eq("deep doo ditt woo hoo shu")
    end
    it "counts again" do
        jb = JungleBeat.new
        jb.append("deep doo ditt woo hoo shu")

        expect(jb.count).to eq(6)
    end
    it "counts again" do
        jb = JungleBeat.new
        jb.append("deep doo ditt woo hoo shu")

        expect(jb.list.count).to eq(6)
    end
    it "plays a sound" do
        jb = JungleBeat.new
        jb.append("deep doo ditt woo hoo shu")
        jb.play

        expect(jb.append("deep doo ditt woo hoo shu")).to eq("deep doo ditt woo hoo shu")
    end

end