class Challenge < ApplicationRecord
  has_many :user_challenges
  has_many :users, through: :user_challenges
  belongs_to :user
  
  # validations presence of all attributes
  validates :name, presence: true
  validates :trial, presence: true
  validates :solution, presence: true
  validates :regex, presence: true
  validates :description, presence: true

  def to_regex(regex = self.regex)
    Regexp.new(regex)
  end

  def match_value(regex)
    self.trial.scan(regex).flatten.map {|word| word.strip}
  end
  
  def total_matches
      self.match_value(self.trial).length
  end
  
  def result
      self.solution.split(',').map {|word| word.strip} == match_value(self.to_regex)
  end
  
  def to_s
      puts "Challenge: #{self.name}"
      puts "String: #{self.trial}"
      puts "Solution: #{self.solution}"
  end
  
end
