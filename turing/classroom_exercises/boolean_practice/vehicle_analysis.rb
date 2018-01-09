class VehicleAnalysis

  def analyze(vehicle)
    case vehicle.car?
    when "car"
      if vehicle.four_wheel_drive?
        puts "Vehicle has four wheels and four wheel drive"
      else
        puts "Vehicle has four wheels and two wheel drive"
      end
    when "tractor"
      puts "Vehicle has four wheels and four wheel drive"
      if vehicle.big_back_wheels?
        puts "with big wheels in the back"
      end
    when "pickup"
      puts "Vehicle has four wheels"
      if vehicle.four_wheel_drive?
        puts "Vehicle has four wheels and four wheel drive"
      else
        puts "with two wheel drive"
      end
      if vehicle.big_back_wheels?
        puts "with big wheels in the back"
      end
    end
  end

end
