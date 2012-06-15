class window.Meeting extends Backbone.Model

  toggleCancel: (callbacks = {}) ->
    @save {cancelled: !@get('cancelled')}, success: callbacks.success, error: callbacks.error

  class: -> if @get('cancelled') then 'cancelled' else ''

  cancelLabel: -> if @get('cancelled') then 'Undo cancel' else 'Cancel'

class window.Meetings extends Backbone.Collection
  url: '/meetings'
  model: Meeting
