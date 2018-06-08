require 'pry'

class Patient

  attr_accessor :name

  def initialize(name)
    @name = name

  end

  def new_appointment(doctor, date)
     Appointment.new(self, doctor, date)
     #binding.pry
     #new_appt
   end

   def appointments
     Appointment.all.select do |appt|
       appt.patient == self
     end
   end

   def doctors
     Appointment.all.map do |appt|
       #binding.pry
       appt.doctor
     end
   end

 end
