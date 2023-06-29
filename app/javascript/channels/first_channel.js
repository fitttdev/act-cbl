import consumer from 'channels/consumer';

consumer.subscriptions.create('FirstChannel', {
  connected() {
    console.log('Connected to FirstChannel');
  },

  disconnected() {
    console.log('Disconnected from FirstChannel');
  },

  received(data) {
    const countElement = document.getElementById('first-count');
    if (countElement) {
      countElement.innerHTML = data.count;
    }
  },
});
