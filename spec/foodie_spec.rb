# require 'foodie'

RSpec.describe Foodie do
  it "has a version number" do
    expect(Foodie::VERSION).not_to be nil
  end

  it "Broccoli is Gross" do
   expect(Foodie::Food.potray("Broccoli")).to eql("Gross!")
  end
  it "Anything not broccoli is delicious" do
    expect(Foodie::Food.potray("Not Broccoli")).to eql("Delicious!")
   end
  it "pluralizes a word" do
    expect(Foodie::Food.pluralize("Tomato")).to eql("Tomatoes")
  end
end
