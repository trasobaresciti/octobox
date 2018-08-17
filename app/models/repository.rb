class Repository < ApplicationRecord
  has_many :notifications, foreign_key: :repository_full_name, primary_key: :full_name
  has_many :subject, through: :notifications
  belongs_to :app_installation

  validates :full_name, presence: true, uniqueness: true
  validates :github_id, uniqueness: true
end
