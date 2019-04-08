class Doctor
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(name, date)
  Appointment.new(date, name, self)
end

  def appointments
    Appointment.all.select do |app|
      app.doctor == self
  end
end
  def patients
    Appointment.all.map do |app|
      app.patient
  end
end

end
