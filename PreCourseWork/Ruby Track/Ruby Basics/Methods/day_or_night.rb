def time_of_day(isDaytime)
  if isDaytime
    puts "It\'s day time!"
  else
    puts "It\'s night time!"
  end
end

daytime = [true, false].sample # This is really freakin cool
time_of_day(daytime)