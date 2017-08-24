class User < ApplicationRecord
  has_many :jobs
  has_many :ships, through: :jobs
end
