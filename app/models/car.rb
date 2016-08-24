class Car

  def initialize(make,model,year,color)
    @make = make
    @model = model
    @year = year
    @speed = 0
    @lights_on = false
    @parking_brake =""
    @color = color
  end

  #
  # def make= make
  #   @make = make
  # end
  #
  # def model= model
  #   @model = model
  # end
  #
  # def year= year
  #   @year = year
  # end
  def color
    @color
  end

  def lights_toggle
    if @lights_on == false
      @lights_on = true
    else
      @lights_on = false
    end
  end

  def lights_on=(x)
    @lights_on = x
  end

  def lights_on?
    @lights_on
  end

  def speed
    @speed
  end

  def make
    @make
  end

  def model
    @model
  end

  def year
    @year
  end

  def accelerate
   @speed = @speed +10
 end

 def brake
   if @speed <= 7
     @speed = 0
   else
     @speed = @speed -7
   end
 end

 def parking_brake= x
   @parking_brake = x
 end

 def parking_brake
   @parking_brake
 end

end
