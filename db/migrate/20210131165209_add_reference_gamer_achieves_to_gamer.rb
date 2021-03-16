class AddReferenceGamerAchievesToGamer < ActiveRecord::Migration[5.2]
  def change
    add_reference :gamer_achieves, :gamer, index: :true
  end
end
