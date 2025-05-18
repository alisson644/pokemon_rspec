require "rails_helper"

RSpec.describe CreatorPokemon do
  let(:creator_pokemon) do
    CreatorPokemon.new(6)
  end

  describe '#create', vcr: { cassette_name: 'CreatorPokemon/create' } do
    it 'create a new pokemon' do
      expect do
          creator_pokemon.create
      end.to change { Pokemon.count }.by(1)
    end
  end

  describe 'pokemon created', vcr: { cassette_name: 'CreatorPokemon/create' } do
    before do
      creator_pokemon.create
    end

    subject do
      Pokemon.last
    end

    it 'have correct name' do
      expect(subject.name).to eq('charizard')
    end
  end
end
