# frozen_string_literal: true

# An article model with following properties:
class Article < ApplicationRecord
  belongs_to :user
  # title: required, from 6 to 100 characters
  validates :title, presence: true, length: { minimum: 6, maximum: 100 }
  # description: required, from 10 to 300 characters
  validates :description, presence: true, length: { minimum: 10, maximum: 300 }
end
