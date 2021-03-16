class GamersController < ApplicationController
  before_action :set_gamer, only: :show
  before_action :find_gamer_achieve, only: :show

  def index
    @gamers = Gamer.filter(params.slice(:status, :location, :starts_with))
  end

  def show
    gamer_id = Gamer.find_by_id(params[:id]).id
    if GamerAchieve.exists?(gamer_id: gamer_id)
      @ga = GamerAchieve.all.where(gamer_id: gamer_id)
    else
      @ga = nil
    end
  end

  def show_results
    @gamer = Gamer.first
    query = <<-SQL
    SELECT description
    FROM achieves
    WHERE id = (SELECT achieve_id
                FROM gamer_achieves 
                WHERE gamer_id = 1 AND match_id in (1, 2))
    SQL
    @result = ActiveRecord::Base.connection.execute(query)
    render 'results/gamer'
  end

  def show_gamer_results

  end

  private

  def set_gamer
    @gamer = Gamer.find_by_id(params[:id])
  end

  def find_gamer_achieve

  end

  # A list of the param names that can be used for filtering the Gamers list
  def filtering_params(params)
    params.slice(:status, :location, :starts_with)
  end

end
