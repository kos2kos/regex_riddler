class RemoveLegitFromChallenges < ActiveRecord::Migration[5.2]
  def change
    remove_column :challenges, :legit
  end
end
