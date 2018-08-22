class RenameOwnerIdToUserIdInChallenges < ActiveRecord::Migration[5.2]
  def change
    rename_column :challenges, :owner_id, :user_id
  end
end
