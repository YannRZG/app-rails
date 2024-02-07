class AddActorToMovie < ActiveRecord::Migration[7.1]
  def change
    add_column :movies, :actor, :string
  end
end
