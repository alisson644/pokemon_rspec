class CreatorPokemon
  def initialize(id_national)
    @id_national = id_national
    create_info
  end

  def create
    Pokemon.create(name: name)
  end

  def name
    @info["name"]
  end

  private
    attr_reader :id_national

    def endpoint
      URI("https://pokeapi.co/api/v2/pokemon/#{id_national}")
    end

    def create_info
      response = Net::HTTP.get(endpoint)
      @info = JSON.parse(response)
    end
end
