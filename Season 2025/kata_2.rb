def riders(stations, station_x)
  riders = 1
  rider_limit = 100

  current_rider_limit = 100

  stations.each_with_index do |val, idx|
    if (idx + 1) == station_x
      riders += 1

      if (rider_limit - (2 * stations[idx - 1])).negative?
        riders += 1
        current_rider_limit = rider_limit - stations[idx - 1]
      elsif (rider_limit - (2 * stations[idx - 1])).zero?
        riders += 1
        current_rider_limit = rider_limit
      else
        current_rider_limit = rider_limit - (2 * stations[idx - 1])
      end
    end

    if (current_rider_limit - val).negative?
      riders += 1
      current_rider_limit = rider_limit
    end

    current_rider_limit -= val
  end

  if station_x > stations.size
    riders += stations.last <= 50 ? 1 : 2
  end

  riders
end

# S1 .. 50 .. S2 .. 51 .. S3 --> 3 (S3)
# R1 100-50=50 at S2
# 50-51= -1 R2 spawns at S2
# 100-51= 49 at S3 and became MIA
# R3 at S3
# 100-51=49 at S2
# 49-51=-2 R4 spawns at S2
# 100-51= 49 at S3


# S1 .. 100 .. S2 --> 2 (S2)
# R1 100 -100 = 0 at S2 and became MIA
# R2 at S2 100-100= 0 at S1
# R3 at S1
# 100-100 = 0 at S2

# S1 .. 50 .. S2 .. 51 .. S3 .. 25 .. S4 .. 50 .. S5 .. 25 .. S6 --> 3 (S3)
# R1 100-50=50 at S2
# 50-51 = -1 R2 at S2
# 100-51 = 49 at S3 and became MIA
# R3 100-51= 49 at S2
# 49-51= -2 R4 at S2
# 100-51 = 49 at S3
# 49-25= 24 at S4
# 24-50 = -26 R5 at S4
# 100-50=50 at S5
# 50-25=25 at S6

# S1 .. 50 .. S2 .. 50 .. S3 .. 25 .. S4 .. 50 .. S5 .. 24 .. S6 --> 3 (S3)
# R1 100-50=50 at S2
# 50 - 50 = 0 at S3 and became MIA
# R2 at S3
# 100-50-50=0
# R3 at S3
# 100-25= 75 at S4
# 75-50= 25 at S5
# 25-24= 1 at S5


# S1 .. 43 .. S2 .. 23 .. S3 .. 40 .. S4 .. 13 .. S5 --> 4 (S4)
# R1 100-43=57 at S2
# 57-23=34 at S3
# 34-40= -6, R2 at S3
# 100-40= 60 at S4 and became MIA
# R3 at S4
# 100-40-40=20 at S4
# 20-13 = 7 at S5
