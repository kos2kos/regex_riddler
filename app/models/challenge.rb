class Challenge < ApplicationRecord
  has_many :user_challenges
  has_many :users, through: :user_challenges

  def match_value(regex)
    @test_string.scan(regex).captures
  end

  def total_matches
      self.match_value(@test_string).length
  end

  def result
      @solution == match_value
  end

  def to_s
      puts "Challenge: #{challenge_name}"
      puts "String: #{test_string}"
      puts "Solution: #{solution}"
  end
end
