class Patient

  attr_accessor :name

  @@all  = []

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
    Appointment.all.select do |appointment|
      appointment.patient == self
      # binding.pry
    end
  end

  def doctors
    self.appointments.map do |appointment|
      appointment.doctor
      # binding.pry
    end
  end
end
