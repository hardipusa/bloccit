# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :user
  belongs_to :topic

  validates :title, presence: true
  validates :body, presence: true
  validates :user, presence: true

  default_scope { order('created_at DESC') }
  
  scope :ordered_by_title, -> {order('title ASC')}
  scope :ordered_by_reverse_created_at, -> {order('created_at ASC')}
end




