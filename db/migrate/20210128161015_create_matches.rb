class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.string :location
      t.string :duration

      t.timestamps
    end
  end
end
