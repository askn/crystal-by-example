class Ticker
  def initialize(@duration : Float64)
    @c = Channel(Nil).new
  end

  def start_timer
    spawn do
      loop do
        sleep @duration
        @c.send nil
      end
    end
  end

  def stop_timer
    @c.close
  end

  def each(&block)
    start_timer
    spawn do
      until @c.closed?
        block.call
        @c.receive
      end
    end
  end
end

ticker = Ticker.new(0.5)
ticker.each do
  puts Time.now
end

sleep 3
