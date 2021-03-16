class CreateAchieves < ActiveRecord::Migration[5.2]
  def change
    create_table :achieves do |t|
      t.string :description, default: "None"

      t.timestamps
    end
  end
end
