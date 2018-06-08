class Doctor

  attr_accessor :name

  @@all = []
  #@@appointments = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def new_appointment(patient, date)
    new_appt = Appointment.new(patient, self, date)
    #@@appointments << new_appt
    new_appt #SINGLE SOURCE OF TRUTH => we do NOT need to shovel
              #to @@apointments BECAUSE the Appointment class
              #STORES THE ARRAY WITH ALL THE APPOINTMENTS
  end

  def appointments
    Appointment.all.select do |appt|
      appt.doctor == self
    end
  end

  def patients
    self.appointments.map do |appt|
      appt.patient
    end
  end

  def self.all
    @@all
  end


end
