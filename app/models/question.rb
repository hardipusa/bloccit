class Question < ActiveRecord::Base
  has_many :answers
  title :string
  body :text
  resolved :boolean
end
