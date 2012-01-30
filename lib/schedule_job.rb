class ScheduleJob
  @queue = :high

  def self.perform(value)
    p 'ScheduleJob start'
    p "value: #{value}"
    sleep 1
    p 'ScheduleJob end'
  end
end
