App.chat = App.cable.subscriptions.create "ChatChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    li = document.createElement('li')
    li.textContent = data
    document.getElementById('message-list').appendChild(li)

  put_message: (msg) ->
    @perform('put_message', { data: msg })
