class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
	 @seconds = 0
  end

  def time_string
  	hrs = @seconds/3600
  	mins = (@seconds%3600)/60
    secs = (@seconds%3600)%60
    hrs = padded(hrs)
    mins = padded(mins)
    secs = padded(secs)

    "#{hrs}:#{mins}:#{secs}"
  end

  def padded(time)
    pad = "0"
    time = time.to_s
    time.length == 1 ? pad+time : time
  end
end
