require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  let(:brownie) { Dessert.new("brownie", 100, chef) }
  describe "#initialize" do
    it "sets a type" do 
      expect(Dessert.type).to eq("brownie")
    end
    it "sets a quantity" do
      expect(Dessert.quantity).to eq(100)
    end
    it "starts ingredients as an empty array" do
      expect(Dessert.ingredients).to eq([])
    end
    it "raises an argument error when given a non-integer quantity" do
      expect{Dessert.new("pudding", "big", chef)}.to eq(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect{Dessert.ingredient("milk")}.to include("milk")
    end
  end

  describe "#mix!" do # gotta creat an array of ingredients first to test out
    it "shuffles the ingredient array" do
      ingredients = ["milk","eggs","chocolate","flour","butter"]

      ingredients.each do |ingredient|
        brownie.add_ingredient(ingredient)
      end
      expect(brownie.ingredients).to eq(ingredients)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity"

    it "raises an error if the amount is greater than the quantity"
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end