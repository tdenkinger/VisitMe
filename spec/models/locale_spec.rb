require 'spec_helper'

describe Locale do
  context "When given a valid locale" do
    it "has a valid factory" do
      FactoryGirl.create(:locale).should be_valid
    end

    it "saves the locale"
    it "returns the locale name and location"
  end

  context "When given an invalid locale" do
    it "does not save the locale"
  end
end
