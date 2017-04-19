App.chat = App.cable.subscriptions.create "ChatChannel",
  connected: ->
    console.log "接続されました"

  disconnected: ->
    console.log "切断されました"
    # Called when the subscription has been terminated by the server

  received: (data) ->
    li = document.createElement('li')
    li.textContent = data
    document.getElementById('message-list').appendChild(li)

  put_message: (msg) ->
    @perform('put_message', { data: msg })
