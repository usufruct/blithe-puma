require 'spec_helper'
require './lib/simple_app'

RSpec.describe SimpleApp do
    it "exists" do
        expect(described_class).to eq(SimpleApp)
    end

    describe "#call" do
        let(:response) { subject.call(double('env', :[] => '/')) }

        it "returns three elements" do
            expect(response.length).to eq(3)
        end

        context "the first returned element" do
            let(:first_element) { subject.call(double('env', :[] => '/'))[0] }

            it "is a string" do
                expect(first_element).to be_a_kind_of(String)
            end
        end

        context "the second returned element" do
            let(:second_element) { subject.call(double('env', :[] => '/'))[1] }

            it "is a hash" do
                expect(second_element).to be_a_kind_of(Hash)
            end
        end

        context "the third returned element" do
            let(:third_element) { subject.call(double('env', :[] => '/'))[2] }

            it "is enumerable" do
                expect(third_element).to be_a_kind_of(Enumerable)
            end
        end

        context "when the request is /herman" do
            let(:env) { { 'PATH_INFO' => '/herman' } }
            
            it "returns a non-sense sentence" do
                marky_markov_double = double('marky_markov', :generate_1_sentence => 'Whales!')
                allow(MarkyMarkov::Dictionary).to receive(:new).and_return(marky_markov_double)

                response = subject.call(env)
                expect(response[2]).to eq(['Whales!'])
            end
        end
    end
end
