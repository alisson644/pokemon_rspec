FactoryBot.define do
  factory :pokeapi, class: String do
    skip_create

    id_national { 6 }
    name { "Charizard" }
    attack { 84 }
    defense { 78 }

    initialize_with do
      info = { id_national: id_national, name: name, attack: attack, defense: defense }
      JSON.generate(info)
    end
  end
end
