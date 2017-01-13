class Timer
  #write your code here
  attr_reader :seconds, :time_string
   def initialize
  	@seconds = 0
  	@time_string = "00:00:00"
  end
  def seconds=(a)
  	@seconds = a
  end
  def time_string
  	if @seconds < 10
  		@time_string = "00:00:0" + @seconds.to_s
  	elsif @seconds < 60
  		@time_string = "00:00:" + @seconds.to_s
  	elsif @seconds < 600
  		secs = @seconds%60
  		mins = (@seconds - secs)/60
  		if secs < 10
  			secs = "0" + secs.to_s
  		end
  		@time_string = "00:0" + mins.to_s + ":" + secs.to_s
  	elsif @seconds < 3600
  		secs = @seconds%60
  		mins = (@seconds - secs)/60
  		if secs < 10
  			secs = "0" + secs.to_s
  		end
  		@time_string = "00:" + mins.to_s + ":" + secs.to_s
  	elsif @seconds < 36000
  		secs = @seconds%60
  		mins = ((@seconds - secs)/60)%60
  		hours = (@seconds - mins)/3600
  		if secs < 10
  			secs = "0" + secs.to_s
  		end
  		if mins < 10
  			mins = "0" + mins.to_s
  		end
  		@time_string = "0" + hours.to_s + ":" + mins.to_s + ":" + secs.to_s
  	else
  		secs = @seconds%60
  		mins = ((@seconds - secs)/60)%60
  		hours = (@seconds - mins)/3600
  		if secs < 10
  			secs = "0" + secs.to_s
  		end
  		if mins < 10
  			mins = "0" + mins.to_s
  		end
  		@time_string = hours.to_s + ":" + mins.to_s + ":" + secs.to_s
  	end
  end
end