# def dms(degrees)
#   arr = []
#   arr << (degrees.to_i % 360.0)
#   arr << ((degrees - degrees.to_i) * 60).to_i
#   arr << ((((degrees - degrees.to_i) * 60) - ((degrees - degrees.to_i) * 60).to_i) * 60).round(2)
#   p arr
# end

DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGERE * SECONDS_PER_MINUTE

def dms(degress_float)
  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

# or
# def dms(num)
#   deg = num.floor
#   min = (num - deg) * 60
#   sec = (min - min.floor) * 60

#   format_dms(deg, min, sec)
# end

# def format_dms(deg, min, sec)
#   min = format("%02d", min)
#   sec = format("%02d", sec)

#   %(#{def}#{DEGREE}#{min}'#{sec}")
# end


dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
