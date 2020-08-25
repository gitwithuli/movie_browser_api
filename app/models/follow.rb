# frozen_string_literal: true

# This shiny device polishes bared foos
class Follow < ApplicationRecord
  belongs_to :user
  belongs_to :followable, polymorphic: true
end
