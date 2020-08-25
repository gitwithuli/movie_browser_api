# frozen_string_literal: true

# This shiny device polishes bared foos
class Movie < ApplicationRecord
  belongs_to :genre
  has_many :starrings, dependent: :destroy
  has_many :stars, through: :starrings, dependent: :destroy

  # include Followable
end
