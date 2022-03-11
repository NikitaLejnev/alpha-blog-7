# frozen_string_literal: true

# A user model with following properties:
class User < ApplicationRecord
  has_many :articles
  # username: required, unique case-insensitive, 3 to 25 characters
  validates :username,
            presence: true,
            uniqueness: { case_sensitive: false },
            length: { minimum: 3, maximum: 25 }
  # username: required, unique case-insensitive, up to 25 characters, valid
  validates :email,
            presence: true,
            uniqueness: { case_sensitive: false },
            length: { maximum: 105 },
            format: { with: URI::MailTo::EMAIL_REGEXP }
end
