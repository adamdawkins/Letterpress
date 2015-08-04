Template.landingPage.helpers(
  page: ->
    Pages.findOne(path: window.location.pathname)
)
