class Api::ActorsController < ApplicationController
  def actors
    actors = @Actor
    render "actors.json.jb"
  end
end
