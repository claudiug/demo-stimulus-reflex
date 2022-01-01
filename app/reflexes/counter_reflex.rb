class CounterReflex < ApplicationReflex
  def increment(step = 1)
    # @count = element.dataset[:count].to_i + step.to_i
    session[:count] = session[:count].to_i + step
  end
end
