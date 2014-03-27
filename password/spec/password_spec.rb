require 'spec_helper'
require './password'

  describe Password do

    # describe '#generate' do

    #   it 'should generate a password n characters long' do
    #     expect(subject.generate(5)).to match /^[a-zA-z\d\p{P}]{5}$/
    #   end

    describe '#generate' do

      it 'should generate a random password' do
      expect(subject.generate(5)).to match /^[a-zA-z\d\p{P}]{5}$/
    end

    end
    
  end
