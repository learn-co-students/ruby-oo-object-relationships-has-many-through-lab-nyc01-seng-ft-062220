class Doctor

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        Doctor.all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select do |element|
            element.doctor == self
        end
    end

    def patients
        self.appointments.map {|element| element.patient}
    end

    def new_appointment(patient, date)
        Appointment.new(date,patient,self)
    end

end