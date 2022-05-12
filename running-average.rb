class RunningAverage
  attr_reader :running_sum
  attr_reader :array
  def initialize
    @array = []
    @running_sum = 0
    @max_length = 6
  end

  def add(num)
    if num.class != Integer
      raise 'expected argument is a single integer'
    end
    @array << num
    @running_sum = @array.sum
    if @array.length > @max_length 
      @running_sum = @running_sum - @array.shift() + num
    end
  end

  def get_average
    @running_sum / @array.length
  end
end
