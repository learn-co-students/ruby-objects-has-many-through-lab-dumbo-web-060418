class Doctor

	attr_accessor :name, :appointment

	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		@@all
	end

	def new_appointment(patient, date)
		Appointment.new(patient, self, date)
	end

	def appointments
		appointments = Appointment.all
		appointments.select { |apps| apps.doctor == self }
	end

	def patients
		self.appointments.map { |app| app.patient }
	end

end