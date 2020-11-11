# frozen_string_literal: true

require 'minitest/autorun'

class TheatreTest < Minitest::Test
  def test_booking_requests
    process 'webserver.log'
  end
end
