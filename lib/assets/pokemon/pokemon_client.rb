require 'poke-ai-v2'

module Pokemon
    class PokemonClient
        def self.pokemon_by_type(type)
            pokemon_types = PokeApi.get(type: type)
            pokemons = JSON.parse(pokemon_types.to_json).with_indifferent_access.slice :pokemon
            pokemons[:pokemon].map { |element| element[:pokemon][:name] }
        end

        def self.random_pokemon
            total_pokemon_count = 100 # As of the last generation I'm aware of. Update this as necessary.
            random_id = rand(1..total_pokemon_count)
            pokemon = PokeApi.get(pokemon: random_id)
            JSON.parse(pokemon.to_json).with_indifferent_access
        end
    end
end