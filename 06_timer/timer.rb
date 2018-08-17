class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    def padded i
      i < 10 ? '0' + i.to_s : i.to_s
    end
    h = @seconds / 3600
    m = @seconds/60 - h*60
    s = @seconds%60
    return "#{padded(h)}:#{padded(m)}:#{padded(s)}"
  end
end
