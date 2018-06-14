class Doctor

	@@all = []

	attr_accessor :name, :appointments

	def initialize(name)
		@name = name
		@appointments = []
		@@all << self
	end

	def self.all
		@@all
	end

	def new_appointment(patient, date)
		appt = Appointment.new(patient, date, self)
		@appointments << appt
		appt
	end

	def patients
		Appointment.all.collect do |appt|
			appt.patient
		end
	end


end
