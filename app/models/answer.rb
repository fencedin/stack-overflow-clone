class Answer < ActiveRecord::Base
  belongs_to :question
  validates :solution, presence: true
end
