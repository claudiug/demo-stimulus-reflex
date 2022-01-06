import consumer from "./consumer"

consumer.subscriptions.create("CounterChannel", {
  received(data) {
    if (data.cableReady) CableReady.perform(data.operations)
  }
})
