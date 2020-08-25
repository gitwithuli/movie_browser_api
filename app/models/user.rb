# frozen_string_literal: true

# This shiny device polishes bared foos
class User < ApplicationRecord
  validates :email, uniqueness: true
  validates_format_of :email, with: /@/
  validates :password_digest, presence: true
  has_secure_password

  has_many :follows
  # has_many :followed_movies, through: :follows, source: :followable, source_type: 'Movie'
  # has_many :followed_genres, through: :follows, source: :followable, source_type: 'Genre'
  # has_many :followed_stars, through: :follows, source: :followable, source_type: 'Star'
end
