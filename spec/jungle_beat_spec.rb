require 'rspec'
require './lib/node'
require './lib/linked_list'
require './lib/jungle_beat'

RSpec.describe JungleBeat do
    it "exists" do
    list = JungleBeat.new
    
    expect(list).to eq(JungleBeat)
    end
end