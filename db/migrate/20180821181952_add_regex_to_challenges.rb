class AddRegexToChallenges < ActiveRecord::Migration[5.2]
  def change
    add_column :challenges, :regex, :string
  end
end
