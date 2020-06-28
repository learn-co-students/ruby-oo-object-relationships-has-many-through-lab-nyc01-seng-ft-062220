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

    def new_appointment(doctor,date)
        Appointment.new(date,self,doctor)
    end

    def appointments
        Appointment.all.select{|i| i.patient == self}
    end

    def doctors
        self.appointments.map {|i| i.doctor}
    end

end

