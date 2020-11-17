class Api::MovieGenresController < ApplicationController
  def create
    moviegenre = MovieGenre.create({
      genre_id: params["genre_id"],

      movie_id: params[:movie_id],
    })
  end
end
