require 'spec_helper'
require './autopairer'

describe Autopairer do

  describe '#people' do
    it 'should return the array of names' do
      subject.people.should eq [
    "Kun Wendell",
    "Jaya Lecce",
    "Sabah Whelan",
    "Jordan Dimitriou",
    "Sunan Hoffmann",
    "Maria Benini",
    "Karen Cloutier",
    "Jaswinder Wood",
    "Eugeneia Seward",
    "Boris Vela"
    ]
    end

  end

  describe '#randomize' do
    it 'should randomize the names' do
      # subject.people.should_receive(:shuffle!)
      # subject.randomize
      expect(subject.randomize).to match_array subject.people
      expect(subject.randomize).to_not eq subject.people
    end
  end

  describe "#pair" do
    it "should pair the names" do

      random_order = [
        "Kun Wendell",
        "Sabah Whelan",
        "Boris Vela",
        "Jordan Dimitriou",
        "Maria Benini",
        "Karen Cloutier",
        "Jaswinder Wood",
        "Sunan Hoffmann",
        "Eugeneia Seward",
        "Jaya Lecce"
      ]

      subject.stub(randomize: random_order)
      subject.should_receive(:puts).with("Pair1 Jaya Lecce, Eugeneia Seward")
      subject.should_receive(:puts).with("Pair2 Sunan Hoffmann, Jaswinder Wood")
      subject.should_receive(:puts).with("Pair3 Karen Cloutier, Maria Benini")
      subject.should_receive(:puts).with("Pair4 Jordan Dimitriou, Boris Vela")
      subject.should_receive(:puts).with("Pair5 Sabah Whelan, Kun Wendell")

      subject.pair
    end
  end
end