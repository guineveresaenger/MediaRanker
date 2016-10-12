class Album < ActiveRecord::Base

  validates :title, presence: true, uniqueness: true
  validates :vote, numericality: { greater_than_or_equal_to: 0} 

  def upvote
    self.vote += 1
  end

end
