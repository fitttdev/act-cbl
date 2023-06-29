import consumer from "channels/consumer"

consumer.subscriptions.create("FirstChannel", {
  connected() {
    console.log("Connected to FirstChannel");
    },

  disconnected() {
    console.log("Disconnected from FirstChannel");
    },

  received(data) {
    console.log("Received data:", data);
  }
});
