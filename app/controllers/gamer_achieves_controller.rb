class GamerAchievesController < ApplicationController
  before_action :find_gamer_achieve, only: :show
  def index
    @matches = Match.all.order(created_at: :desc)
    @teams = Team.all
    @gamers = Gamer.all
    @achieves = Achieve.all
    @gamer_achieves = GamerAchieve.all
  end

  def show
  end

  def new
    #@gamer_ach = GamerAchieve.new
  end

  def create
    @gamer_ach = GamerAchieve.new(gamer_achieve_params)
    if @gamer_ach.save
      redirect_to teams_path
    else
      redirect_to gamers_path
    end
  end

  private

  def gamer_achieve_params
    params.require(:gamer_achieve).permit(:gamer_id, :match_id, :achieve_id)
  end

  def find_gamer_achieve
    @gamer_achieve = GamerAchieve.find(params[:id])
  end


end
