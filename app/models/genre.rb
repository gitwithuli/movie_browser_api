# frozen_string_literal: true

# This shiny device polishes bared foos
class Genre < ApplicationRecord
  has_many :movies, dependent: :destroy
  # include Followable
end
