require 'pry'


class Patient

	attr_accessor :name, :appointments

	@@all = []

	def initialize(name)
		@name = name
		@appointments = []
		@@all << self
	end

	def self.all
		@@all
	end

	def new_appointment(doctor, date)
		appt = Appointment.new(self, date, doctor)
		@appointments << appt
		appt
	end

	def doctors
		Appointment.all.collect do |appt|
			appt.doctor
			binding.pry
		end
	end


	def doctors
		Appointment.all.collect do |pt|
			pt.doctor
		end
	end

end
