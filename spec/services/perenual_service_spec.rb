require "rails_helper"

RSpec.describe PerenualService do
  describe "instance methods" do
    describe "::edible_outdoor_plants_list" do
      it "returns a truthy response" do
        response = described_class.new.edible_outdoor_plants_list
        expect(response).to be_truthy
      end
    end

    describe "#hardiness_zone_search" do
      it "returns a list of search results for a given hardiness zone" do
        response = described_class.new.hardiness_zone_search(zone: 1)
        expect(response).to be_truthy
      end
    end
  end
end
