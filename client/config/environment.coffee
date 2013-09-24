# Routing
Router.map ->
  @route "home", path: "/"

Router.configure
  layout: "appLayout"

Session.set("language", "English")
