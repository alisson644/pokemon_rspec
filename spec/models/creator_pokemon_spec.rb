require "rails_helper"

RSpec.describe CreatorPokemon do
  let(:creator_pokemon) do
    CreatorPokemon.new(6)
  end
  before do
    path_file = 'spec/fixtures/services/response.txt'
    file_response = File.new(path_file)
    stub_request(:get, 'https://pokeapi.co/api/v2/pokemon/6')
      .to_return(file_response)
  end
  describe '#create' do
    it 'create a new pokemon' do
      expect do
        creator_pokemon.create
      end.to change { Pokemon.count }.by(1)
    end
  end

  describe 'pokemon created' do
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
