# Routing

Router.map ->
  @route 'slides',
    path: '/slide/:_id',
    controller: 'SlidesController',
    action: 'show'

class @SlidesController extends RouteController
  template: 'loading_slide'
  data: ->
    return Slides.findOne(this.params._id)
  show: ->
    this.render(this.data().type) if this.data()?

# Template Definitions

Template.sectionHeaderSlide.title = ->
  {name: translate(this.title).toUpperCase()}
Template.sectionHeaderSlide.alternate = ->
  {name: "Well, so it has come to this that I have to use fake data"}




