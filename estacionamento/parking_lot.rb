#entrouUmCarro
#saiuUmCarro
#naoPodeEntrarCarroDuplicado
#estacionamentoLotado
#naoPodeSairCarroQueNaoExiste
#tentouEntrarUmCarroForadoHorario
#tentouSairUmCarroForaDoHorario
#umCarroNaoPodeSairAntesDeTerEntrado
#umCarroPermaneceuDurante3HorasNoEstacionamento
#umCarroPermaneceuPor3HorasNoEstacionamentoEDevePagar4Reais
#umCarroPermaneceuPor4HorasNoEstacionamentoEDevePagar5Reais
#umCarroPermaneceuPor10HorasNoEstacionamentoEDevePagar20Reais
#umCarroPermaneceuPor1DiaNoEstacionamentoEDevePagar20Reais

class ParkingLot

  def vacancies
    @vacancies
  end

  def car_list
    @car_list
  end

  def initialize(vacancies)
    @car_list = Array.new(vacancies)
    @vacancies = @car_list.length
  end

  def arrive_car(a_car)
    #@vacancies = @vacancies -1
    if is_car_in_parking_lot(a_car) then
      raise DuplicatedCarException
    end
    if is_parking_lot_full() then
      raise FullParkingLotException
    end
    @car_list.push(a_car)
    @vacancies -= 1
  end

  def leave_car(a_car)
    unless is_car_in_parking_lot(a_car) then
      raise InvalidCarException
    end
    @car_list.delete(a_car)
    @vacancies += 1
  end

  def is_car_in_parking_lot(a_car)
    if @car_list.include?(a_car) then
      return true
    else
      return false
    end
  end

  def is_parking_lot_full
    return @vacancies == 0
  end

end

class DuplicatedCarException < StandardError
end

class InvalidCarException < StandardError
end

class FullParkingLotException < StandardError
end

class Car

  # private String model;
  def model
    @model
  end

  #private String plate;
  def plate
    @plate
  end

  #public String getModel() {
  #	return this.model
  #}

  #public Void setModel(String model) {
  #	this,model = model;
  #}

  #public Car(String model) {
  #	setModel(modle);
  #}
  def initialize(model, plate)
    @model = model
    @plate = plate
  end


end
