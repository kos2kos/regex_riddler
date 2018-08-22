class AddScoreToUserChallenges < ActiveRecord::Migration[5.2]
  def change
    add_column :user_challenges, :score, :integer
  end
end
