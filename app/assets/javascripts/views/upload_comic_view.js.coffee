StripfighterEmber.UploadComicView = Ember.View.extend
  templateName: "upload_comic"
  tagName: "form"
  classes: ['form-horizontal']

  submit: ->
    @get('controller').uploadComic(@get('comicTitle'))
    false