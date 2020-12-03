class Api::ActorsController < ApplicationController
  before_action :authenticates_admin, except: [:index, :show]

  def index
    @actors = Actor.all
    render "index.json.jb"
  end

  def create
    @actor = Actor.new({
      first_name: params["first_name"],
      last_name: params["last_name"],
      known_for: params["known_for"],
      movie_id: params["movie_id"],
    })
    if @actor.save
      render "show.json.jb"
    else
      render json: { error: @actor.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    input = params["id"],
    @actor = Actor.find_by(id: input)
    render "show.json.jb"
  end

  def update
    input = params["id"],
            @actor = Actor.find_by(id: input),
            @actor.first_name = params["first_name"] || actor.first_name,
            @actor.last_name = params["last_name"] || actor.last_name,
            @actor.known_for = params["known_for"] || @actor.known_for,
            @actor.movie_id = params["movie_id"] || @actor.movie_id,
    @actor.save

    render "show.json.jb"
  end

  def destroy
    input = params["id"]
    @actor = Actor.find_by(id: input)
    @actor.destroy
    render json: { message: "The actor is now Destoyed!" }
  end
end
