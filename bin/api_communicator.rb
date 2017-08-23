require 'rest-client'
require 'json'
require 'pry'


def get_project_names_from_indoegogo_api(project)
    all_project = RestClient.get('---------') #NEED LINK FOR INDOEGOGO JSON LINK
    project_hash = JSON.parse(all_project)

 # # iterate over the character hash to find the collection of `films` for the given
 # #    # `character`
 #      film_description=nil
 #      films_hash=[]

 #        character_hash["results"].each do |people|
 #        if people["name"] == character
 #          people["films"].each do |film|
 #            films_hash<<film
 #        end
 #          end
 #          end
 #        films_hash

 #  # collect those film API urls, make a web request to each URL to get the info
 #  #  for that film
 #  # return value of this method should be collection of info about each film.
 #  #  i.e. an array of hashes in which each hash reps a given film
 #  # this collection will be the argument given to `parse_character_movies`
 # #  and that method will do some nice presentation stuff: puts out a list
 #  #  of movies by title. play around with puts out other info about a given film.
end



def parse_character_movies(films_hash)
  # some iteration magic and puts out the movies in a nice list
  film_array = []
  films_hash.each do |character|
    unparsed= RestClient.get(character)
    film_description = JSON.parse(unparsed)
    film_array << film_description
  end
  film_array
end
