class AddReferenceGamerAchievesToAchieve < ActiveRecord::Migration[5.2]
  def change
    add_reference :gamer_achieves, :achieve, index: :true
  end
end
