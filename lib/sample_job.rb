class SampleJob
  @queue = :low

  def self.perform(value)
    p 'SampleJob start'
    p "value: #{value}"
    sleep 1
    p 'SampleJob end'
  end
end
