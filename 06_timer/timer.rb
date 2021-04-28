class Timer
  attr_accessor :seconds
  def initialize
    @seconds = 0
  end

  def time_string
    hours = 00
    minutes = 00
    seconds = 00
    while @seconds - 3600 > 0
    	hours += 1
    	@seconds -= 3600
    end
    while @seconds - 60 > 0
      minutes += 1
      @seconds -= 60
    end
    seconds = @seconds
    if hours < 10
    	hours = "0#{hours}"
    end
    if minutes < 10
    	minutes = "0#{minutes}"
    end
    if seconds < 10
    	seconds = "0#{seconds}"
    end
    return "#{hours}:#{minutes}:#{seconds}"
  end
end
