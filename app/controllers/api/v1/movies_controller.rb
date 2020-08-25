# frozen_string_literal: true

module Api
  module V1
    # This shiny device polishes bared foos
    class MoviesController < ApplicationController
      def show
        render json: Movie.find(params[:id])
      end

      def index
        render json: Movie.all
      end
    end
  end
end
