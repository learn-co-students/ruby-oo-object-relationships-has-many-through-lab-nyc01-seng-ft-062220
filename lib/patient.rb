class Patient

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        Patient.all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select do |element|
            element.patient == self
        end
    end

    def doctors
        self.appointments.map{|element| element.doctor}
    end

    def new_appointment(date,doctor)
        Appointment.new(doctor,self,date)
    end

end