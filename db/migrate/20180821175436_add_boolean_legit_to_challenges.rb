class AddBooleanLegitToChallenges < ActiveRecord::Migration[5.2]
  def change
    add_column :challenges, :legit, :boolean
  end
end
