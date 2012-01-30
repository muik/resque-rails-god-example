class ErrorJob
  @queue = :low

  def self.perform(value)
    p 'ErrorJob start'
    p "value: #{value}"
    1 / 0
    p 'ErrorJob end'
  end
end
