require "rails_helper"

RSpec.describe '#name_completo' do
  context "When have name and id_national" do
    let(:pokemon) do
      Pokemon.new(name: "Charizard", id_national: 6)
    end

    it "show name and id_nacional" do
      expect(pokemon.name_completed).to eq("Charizard - 6")
    end
  end
  context "When not have a name and id_national" do
    it "is nil" do
      pokemon_2 = Pokemon.new
      expect(pokemon_2.name_completed).to be_nil
    end
  end
end
