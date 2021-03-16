class AchievesController < ApplicationController
  def index
    @achieves = Achieve.all
  end

  def new
    @achieve = Achieve.new
  end

  def create
    @achieve = Achieve.new(achieve_params)
    if @achieve.save
      redirect_to achieves_path
    else
      render :new
    end
  end

  private

  def achieve_params
    params.require(:achieve).permit(:description)
  end
end
