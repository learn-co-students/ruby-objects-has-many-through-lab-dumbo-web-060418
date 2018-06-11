class Appointment
  @@all = []

  def self.all
    @@all
  end

attr_accessor :date, :patient, :doctor


  def initialize(patient, date, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end
end
