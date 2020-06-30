require 'pry'

class Patient

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def appointments
    Appointment.all.select do |element|
      element.patient == self
    end
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def doctors
    appointments.map do |element|
      element.doctor
    end
  end

  def self.all
    @@all
  end

end