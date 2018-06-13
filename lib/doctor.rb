class Doctor

    attr_accessor :name

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
      #goes thru all the songs and
      #finds the one that belongs to an instance of an artist
      Appointment.all.select do |appointment|
        appointment.doctor == self
      end
    end

    def patients
      #iterates over artist's songs
      #gets genre of each song
      self.appointments.map do |appointment|
        appointment.patient
        # binding.pry
      end
    end
end
