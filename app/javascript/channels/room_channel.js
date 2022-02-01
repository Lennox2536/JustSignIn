import consumer from "channels/consumer"

consumer.subscriptions.create({channel: "RoomChannel"}, {
  connected() {
    console.log("Established connection")
  },

  disconnected() {
  },

  received(data) {
    const {author, body} = data
    const elem = document.querySelector('#msg')
    if(elem){
      elem.insertAdjacentHTML('beforeend', this.message(author, body))
    }
  },

  message(author, data){
    return `
    <div style="border: solid 1px black;">
      <h5>Author: ${author}</h5>
      <p>${data}</p>
    </div>
    `
  }
});
