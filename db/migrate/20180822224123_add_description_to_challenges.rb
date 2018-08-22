class AddDescriptionToChallenges < ActiveRecord::Migration[5.2]
  def change
    add_column :challenges, :description, :string
  end
end
