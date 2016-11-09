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
        @vacancies = 500
        @car_list = Array.new()
    end

    def arrive_car(a_car)
    	#@vacancies = @vacancies -1
    	@vacancies -= 1
    end

    def leave_car(a_car)
    	@vacancies += 1
    end

    def is_car_in_parking_lot(a_car)
    	return true
    end

end

class DuplicatedCarException < RuntimeError
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
