class IncrementJob < ApplicationJob
  include CableReady::Broadcaster
  queue_as :default

  def perform(*args)
    # Do something later
    cable_ready["counter"].text_content(selector: "#counter", text: Rails.cache.increment("counter")).broadcast
  end
end
