require './estacionamento/parking_lot'
require 'test/unit'

class TestEstacionamento < Test::Unit::TestCase

  def setup
    @my_park = ParkingLot.new(500)
    @a_car = Car.new('Gol', 'MMM1111')

  end

  def test_empty_parking_lot
    assert_equal 500, @my_park.vacancies
  end

  def test_entrou_um_carro
    @my_park.arrive_car(@a_car)
    assert_equal 499, @my_park.vacancies
  end

  def test_entrou_um_carro_2
    @my_park.arrive_car(@a_car)
    assert_equal true, @my_park.is_car_in_parking_lot(@a_car)
  end

  def test_entrou_um_carro_3
    assert_raise DuplicatedCarException do
      @my_park.arrive_car(@a_car)
      @my_park.arrive_car(@a_car)
    end
  end

  def test_saiu_um_carro
    @my_park.arrive_car(@a_car)
    @my_park.leave_car(@a_car)
    assert_equal 500, @my_park.vacancies
  end

  def test_nao_pode_sair_carro_que_nao_existe
    assert_raise InvalidCarException do
      another_car = Car.new('palio', 'THS0908')
      @my_park.leave_car(another_car)
    end
  end

  def test_estacionamento_lotado
    # encher o estacionamento
    another_park = ParkingLot.new(0)
    assert_raise FullParkingLotException do
      another_park.arrive_car(@a_car)
    end
  end
end

class TestCar < Test::Unit::TestCase

  def test_new_car
    new_car = Car.new('Gol', 'MMM0909')
    assert_equal 'Gol', new_car.model
  end

end
