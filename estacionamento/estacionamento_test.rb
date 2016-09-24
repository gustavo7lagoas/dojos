require './parking_lot'
require 'test/unit'

class TestEstacionamento < Test::Unit::TestCase

    def test_empty_parking_lot
        my_park = ParkingLot.new(500)
        assert_equal 500, my_park.vacancies
    end

end
