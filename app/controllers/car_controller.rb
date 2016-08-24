class CarController < ApplicationController
  def create_car
    #createing an instance variable that takes the paramaters and creates a new car
    @car = Car.new(params[:make],params[:model],params[:year],params[:color])
    #turning the object car into a string and saving it into a cookie
    cookies[:car] = @car.to_yaml
    render "car_status.html.erb"
  end

  def accelerate
    #taking the string in the cookie and turning it back into an boject
    @car = YAML.load(cookies[:car])
    if @car.parking_brake == 'release' || @car.parking_brake == ""
      #calling on the accelerate method in Car class
      @car.accelerate
      #saving the car with the acceleated speed back into the   cookie in a string
      cookies[:car] = @car.to_yaml
    end
    render "car_status.html.erb"
  end

  def brake
    #taking the string in the cookie and turning it back into an object
    @car = YAML.load(cookies[:car])
    #calling on the brake method in Car class
    @car.brake
    #saving the car with the brake speed back into the cookie in a string
    cookies[:car] = @car.to_yaml
    render "car_status.html.erb"
  end

  def lights_toggle
    #taking the string in the cookie and turning it back into an object
    @car = YAML.load(cookies[:car])
    #calling on the brake method in Car class
    @car.lights_toggle
    #saving the car with lights on/off back into the cookie in a string
    cookies[:car] = @car.to_yaml
    render "car_status.html.erb"
  end

  def parking_brake
    #taking the string in the cookie and turning it back into an object
    @car = YAML.load(cookies[:car])
    if @car.speed == 0

      #calling on the parking_brake method in Car class and giving it the parameter "params" that we get in the toggle
      @car.parking_brake = params[:set_release]
      #saving the car with the parking_brake outcome back into the cookie in a string
      cookies[:car] = @car.to_yaml
    end
    render "car_status.html.erb"
  end



end
