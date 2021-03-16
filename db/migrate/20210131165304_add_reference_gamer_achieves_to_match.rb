class AddReferenceGamerAchievesToMatch < ActiveRecord::Migration[5.2]
  def change
    add_reference :gamer_achieves, :match, index: :true
  end
end
