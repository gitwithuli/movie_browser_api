# frozen_string_literal: true

# This shiny device polishes bared foos
class Star < ApplicationRecord
  has_many :starrings, dependent: :destroy
  has_many :movies, through: :starrings, dependent: :destroy
  # include Followable
end
