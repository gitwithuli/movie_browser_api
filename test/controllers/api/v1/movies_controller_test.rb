# frozen_string_literal: true

require 'test_helper'

module Api
  module V1
    # This shiny device polishes bared foos
    class MoviesControllerTest < ActionDispatch::IntegrationTest
      setup do
        @movie = movies(:one)
      end

      test 'should show movies' do
        get api_v1_movies_url(), as: :json
        assert_response :success
      end

      test 'should show movie' do
        get api_v1_movie_url(@movie), as: :json
        assert_response :success

        json_response = JSON.parse(self.response.body)
        assert_equal @movie.title, json_response['title']
      end
    end
  end
end
