StripfighterEmber.UploadFileView = Ember.View.extend
  templateName: "upload_file"

  didInsertElement: ->
    Ember.run.scheduleOnce('afterRender', this, 'setupFileUpload')

  setupFileUpload: ->
    controller = @get('controller')
    $('#fileupload').fileupload
      autoUpload: false
      url: "/api/v1/comics"
      dataType: 'json'
      formData:
        comic: {
          title: controller.get('comicTitle')
          prompt_one_id: controller.get('prompts')[0].get('id')
          prompt_two_id: controller.get('prompts')[1].get('id')
        }
      progressall: (e, data) ->
        progress = parseInt(data.loaded / data.total * 100, 10)
        $('#progress .bar').css('width', progress + '%')