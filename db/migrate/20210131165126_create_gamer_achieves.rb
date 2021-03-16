class CreateGamerAchieves < ActiveRecord::Migration[5.2]
  def change
    create_table :gamer_achieves do |t|

      t.timestamps
    end
  end
end
