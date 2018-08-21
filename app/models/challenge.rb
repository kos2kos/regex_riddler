class Challenge < ApplicationRecord
  has_many :user_challenges
  has_many :users, through: :user_challenges

  def to_regex(regex = self.regex)
    Regexp.new(regex)
  end
  def match_value(regex)
    self.trial.scan(regex).captures
  end

  def total_matches
      self.match_value(self.trial).length
  end

  def result(regex)
      self.solution == match_value(self.to_regex(regex))
  end

  def to_s
      puts "Challenge: #{self.name}"
      puts "String: #{self.trial}"
      puts "Solution: #{self.solution}"
  end
end
