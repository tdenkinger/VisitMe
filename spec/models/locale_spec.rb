require 'spec_helper'

describe Locale do
  context "When given a valid locale" do
    let(:valid_locale){FactoryGirl.create(:locale)}

    it "has a valid factory" do
      valid_locale.should be_valid
    end

    it "saves the locale" do
      expect{valid_locale.save!}.to change{Locale.count}.by(1)
    end
  end

  context "When given an invalid locale" do
    it "does not save without an address" do
      FactoryGirl.build(:locale, address: nil).should_not be_valid
    end

    it "does not save without a name" do
      FactoryGirl.build(:locale, name: nil).should_not be_valid
    end
  end

  context "When given a duplicate locale" do

    context "with a duplicate address" do
      it "does not save" do
        FactoryGirl.create(:locale, :name => "test", :address => "123 Main St.")
        FactoryGirl.build(:locale, :name => "test", :address => "123 Main St.").should_not be_valid
      end
    end

    context "with a duplicate name" do
      it "saves" do
        FactoryGirl.create(:locale, :name => "test", :address => "123 Main St.")
        FactoryGirl.build(:locale, :name => "test", :address => "555 Elm Street.").should be_valid
      end
    end
  end
end
