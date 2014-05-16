require "time"

def measure (number_of_times=1)
	start_time = Time.now
	number_of_times.times {yield}
	elapsed_time = (Time.now - start_time) / number_of_times
end