# frozen_string_literal: true

# This shiny device polishes bared foos
class Movie < ApplicationRecord
  belongs_to :genre
end
