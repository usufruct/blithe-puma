require 'spec_helper'
require './lib/markov_talker'

RSpec.describe MarkovTalker do
    it "exists" do
        expect(described_class).to be(MarkovTalker)
    end

    describe "#melville_me" do
        it "puts out a sentence of generated Melville" do
            allow(MarkyMarkov::Dictionary).to receive(:new).and_return(double(generate_1_sentence: 'Just call me Markov'))
            expect(subject.melville_me()).to eq('Just call me Markov') 
        end
    end
end
