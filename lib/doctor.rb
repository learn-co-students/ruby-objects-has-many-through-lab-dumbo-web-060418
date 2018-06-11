require 'pry'
class Doctor
  @@all = []

  def self.all
    @@all
  end

 attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, patient)
    appt = Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select do |appointments|
      appointments.doctor == self
    end
  end

  def patients
    Appointment.all.collect do |appointment|
      appointment.patient
    end
  end


end
