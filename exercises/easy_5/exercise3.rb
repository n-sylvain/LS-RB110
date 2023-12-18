MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# def str_to_hours_mins(time_str)
#   # arr = [str[0, 2].to_i, str[3, 2].to_i]
#   time_str.split(':').map(&:to_i) # or time_str.split(':').map{ |string| strin.to_i }
# end

def after_midnight(time_str)
  hours, mins = time_str.split(':').map(&:to_i)
  (hours % HOURS_PER_DAY) * MINUTES_PER_HOUR + mins
end

def before_midnight(time_str)
  hours, mins = time_str.split(':').map(&:to_i)
  (((HOURS_PER_DAY - 1) - (hours % HOURS_PER_DAY)) * MINUTES_PER_HOUR + (MINUTES_PER_HOUR - mins)) % MINUTES_PER_DAY
end


p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
p before_midnight('23:59')
p before_midnight('00:00')
p before_midnight('24:00')
p before_midnight('00:01')
