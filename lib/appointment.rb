class Appointment

    attr_reader :patient, :doctor

    @@all = []
   def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    Appointment.all << self
   end

   def self.all
    @@all 
   end

end