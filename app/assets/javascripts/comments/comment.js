var comment = function() {
  $('.comment_form button').click(function(){
    var form = $(this).parents('.comment_form').first()
    var type = form.find('#type').val()
    var id = form.find('#id').val()
    var message = form.find('#message').val()
    $.ajax({
      type: "POST",
      url: "/comments",
      data: { type: type, 
              object_id: id,
              message: message
            },
      success: function(data){
        $('.comments').html('')
        data.forEach(function(comment) {
         var html = "<p>" + comment.user.name + " : " + comment.message + " </p>"
          $('.comments').append(html)
        })
      },
      error: function(data){ 
        alert(data.responseText)
      }
    })
  })
}