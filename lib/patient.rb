require "pry"

class Patient
    attr_accessor :name
    @@all = []

    def initialize (name)
        @name = name

        @@all << self
    end


    def self.all
        @@all
    end

    def appointments
        #apps = []
        Appointment.all.select do |app|
            app.patient == self
            #binding.pry
        end
        #apps
    end
    
    def new_appointment (doctor, date)
        Appointment.new(date, self, doctor)
    end

    def doctors
        #binding.pry
        self.appointments.map do |app|
            #binding.pry
            app.doctor
            #binding.pry
        end
    end


end