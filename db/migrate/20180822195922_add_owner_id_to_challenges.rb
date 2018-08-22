class AddOwnerIdToChallenges < ActiveRecord::Migration[5.2]
  def change
    add_column :challenges, :owner_id, :integer
  end
end
