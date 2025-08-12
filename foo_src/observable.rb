class Temperature
  @p = [83,75,90,134,112,79]
  def self.fetch
    exit if @p.empty?
    @p.shift
  end
end
require "observer"

class CheckWaterTemp
  include Observable
  def run
    last_temp = nil
    loop do
      temp = Temperature.fetch
      puts "Current temperature: #{temp}"
      if temp != last_temp
        changed # needed to notify observers
        notify_observers(Time.now, temp) # notifies observers
        last_temp = temp
      end
    end
  end
end

class TempWarn # this is the concrete implementation of the observer
  def initialize(&limit) # pass in a block of code providing a limit
    @limit = limit
  end
  def update(time, temp) # callback for observer
    if @limit.call(temp)
      puts "--- #{time}: Temp outside range: #{temp}"
    end
  end
end

checker = CheckWaterTemp.new
checker.add_observer(TempWarn.new {|t| t < 80})
checker.add_observer(TempWarn.new {|t| t > 120})
checker.run
