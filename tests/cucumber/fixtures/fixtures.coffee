Meteor.methods(
  'reset': ->
    Pages.remove({})

  'page/create': (page) ->
    Pages.insert(page)
)
