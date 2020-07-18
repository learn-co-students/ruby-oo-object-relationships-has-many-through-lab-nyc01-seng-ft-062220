require "pry"

class Patient

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(date, doctor)
        Appointment.new(doctor, self, date)
        # binding.pry
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select { |appt| appt.patient == self }
    end

    def doctors
        appointments.collect { |x| x.doctor }
    end
end