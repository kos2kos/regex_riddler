class CreateChallenges < ActiveRecord::Migration[5.2]
  def change
    create_table :challenges do |t|
      t.string :name
      t.string :trial #what the actual trial / exam it would be
      t.string :solution #what we want the regex to spit back out
      t.timestamps
    end
  end
end
