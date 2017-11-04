require 'spec_helper'
require './lib/simple_app'

RSpec.describe SimpleApp do
    it "exists" do
        expect(described_class).to eq(SimpleApp)
    end

    describe "#call" do
        let(:response) { subject.call }

        it "expects a single argument" do
            expect(subject).to receive(:new).with(anything)
            response
        end
                   
        it "returns three elements" do
            expect(response.length).to eq(3)
        end

        context "the first returned element" do
            let(:first_element) { subject.call[0] }

            it "is a string" do
                expect(first_element).to be_a_kind_of(String)
            end
        end

        context "the second returned element" do
            let(:second_element) { subject.call[1] }

            it "is a hash" do
                expect(second_element).to be_a_kind_of(Hash)
            end
        end

        context "the third returned element" do
            let(:third_element) { subject.call[2] }

            it "is enumerable" do
                expect(third_element).to be_a_kind_of(Enumerable)
            end
        end
    end
end
