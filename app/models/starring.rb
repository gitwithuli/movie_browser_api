# frozen_string_literal: true

# This shiny device polishes bared foos
class Starring < ApplicationRecord
  belongs_to :star
  belongs_to :movie
end
