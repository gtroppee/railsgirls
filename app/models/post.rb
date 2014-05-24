class Post < ActiveRecord::Base
  belongs_to :user

  # VALIDATORS
  validates :title, presence: true
  validates :message, presence: true
end
