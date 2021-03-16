class ResultsController < ApplicationController
  def index
    @matches = Match.all
    @teams = Team.all
    @gamers = Gamer.all
    @achieves = Achieve.all
    @gamer_achieves = GamerAchieve.all
  end

  def show
    @gamer = Gamer.first
  end
end

# controller only for visual