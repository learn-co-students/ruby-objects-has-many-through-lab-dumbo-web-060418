 class Patient
   attr_accessor :name

   @@all

   def initialize(name)
     @name = name
   end

   def self.all
     @@all
   end

   def new_appointment(doctor, date)
     Appointment.new(self, doctor, date)
   end

   def appointments
     Appointment.all.select do |appt|
       appt.patient == self
     end
   end


   def doctors
     all_appts = self.appointments

     all_appts.map do |appt|
       appt.doctor
     end
   end

 end
