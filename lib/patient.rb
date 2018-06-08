class Patient

	attr_accessor :name

	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		@@all
	end

	def new_appointment(doctor, date)
		Appointment.new(self, doctor, date)
	end

	def appointments
		apps = Appointment.all
		apps.select { |app| app.patient == self }
	end

	def doctors
		self.appointments.map { |app| app.doctor }

	end

end