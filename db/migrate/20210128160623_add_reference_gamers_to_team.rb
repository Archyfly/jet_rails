class AddReferenceGamersToTeam < ActiveRecord::Migration[5.2]
  def change
    add_reference :gamers, :team, index: :true
  end
end

