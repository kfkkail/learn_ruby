class Timer
  attr_reader :seconds
  def initialize
    @seconds = 0
  end

  def seconds=(time)
    @seconds = time
  end

  def time_string
    # 3600 seconds in an hour
    # 60 seconds in a minute

    if @seconds > 3600
      hour = @seconds/3600
      remainder = @seconds - (hour*3600)
      hour = hour.to_s
      if hour.length < 2
        hour = "0" + hour
      end
    else
      remainder = @seconds
      hour = "00"
    end

    if remainder > 60
      minute = remainder/60
      remainder = remainder - (minute*60)
      minute = minute.to_s
      if minute.length < 2
        minute = "0" + minute.to_s
      end
    else
      remainder = @seconds
      minute = "00"
    end

    second = remainder.to_s
    if second.length < 2
      second = "0" + second
    end
    '' + hour + ':' + minute + ':' + second
  end
end
