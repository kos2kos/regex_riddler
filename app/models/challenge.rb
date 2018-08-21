class Challenge < ApplicationRecord
  has_many :user_challenges
  has_many :users, through: :user_challenges

  def to_regex(regex = self.regex)
    # byebug
    Regexp.new(regex)
  end
  def match_value(regex)
    self.trial.scan(regex)
  end

  def total_matches
      self.match_value(self.trial).length
  end

  def result
      self.solution.split(',') == match_value(self.to_regex)
  end

  def to_s
      puts "Challenge: #{self.name}"
      puts "String: #{self.trial}"
      puts "Solution: #{self.solution}"
  end
end
