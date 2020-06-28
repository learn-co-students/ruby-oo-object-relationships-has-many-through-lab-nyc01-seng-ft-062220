require 'pry'
class Doctor
    
    attr_reader :name

    @@all = []
    
    def initialize(name)
        @name = name
        Doctor.all << self 
        
    end

    def self.all
        @@all
    end

    def appointments #this is the helper
        Appointment.all.select { |appt| appt.doctor == self }
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

     def patients
       appointments.map { |appt| appt.patient } 
    end

end

#binding.pry