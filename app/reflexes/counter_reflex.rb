class CounterReflex < ApplicationReflex
  def increment(step = 1)
    # @count = element.dataset[:count].to_i + step.to_i
    session[:count] = session[:count].to_i + step
  end

  def create
    puts 'zzzz'
    puts element
    puts element.dataset['post-id']
    puts 'zzzzzzz'
    @count = element.dataset[:count].to_i + 1
  end

  def foo
    cable_ready.console_log(message: 'Cable Ready rocks!').broadcast
    morph :nothing
  end

  def reserve
    @value = element[:value]&.reverse
  end
end
