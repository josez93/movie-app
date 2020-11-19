class MoviesController < ApplicationController
  def show
    @movies = Movie.find_by(id: params[:id])
    render "show.html.erb"
  end
end
