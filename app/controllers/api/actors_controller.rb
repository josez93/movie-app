class Api::ActorsController < ApplicationController
  def single_action
    @first = Actor.find_by id: "1"
    render "single.json.jb"
  end

  def all_fake_action
    @fakes = Actor.all
    render "all.json.jb"
  end
end
