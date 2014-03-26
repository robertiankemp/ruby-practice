require 'spec_helper'
require './thank_you_generator'

  describe ThankYouGenerator do
    # let(:csv_file){ double('a csv file') }
    let(:csv_file){ CSV.new("a real, csv, instance") }

    subject { ThankYouGenerator.new(csv_file) }

    describe '#initialize' do
      it 'sets the csv_file instance variable' do
        subject.csv_file.should eq(csv_file)
      end
    end 

    describe '#thank_you_message' do
      it 'should puts each row into an array' do
        subject.csv_file.parse_file.should eq ["a real", "csv",
         "instance"]
      end
    end
    # describe '#readfile' do

    #   # it 'should read in the file' do
    #   #   subject.read_file.should eq 

    #   # end

    # end

    
  end