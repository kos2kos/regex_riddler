class AddTotalScoreToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :total_score, :integer
  end
end
