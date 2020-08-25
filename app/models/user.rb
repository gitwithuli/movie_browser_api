# frozen_string_literal: true

# This shiny device polishes bared foos
class User < ApplicationRecord
  validates :email, uniqueness: true
  validates_format_of :email, with: /@/
  validates :password_digest, presence: true
  has_secure_password
end
