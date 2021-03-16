class MatchesController < ApplicationController
  before_action :find_match, only: :show

  def index
    @matches = Match.all.order(created_at: :desc)

  end

  def show
  end

  private

  def find_match
    @match = Match.find(params[:id])
  end

end
