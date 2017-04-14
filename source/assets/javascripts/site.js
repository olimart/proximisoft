document.addEventListener("DOMContentLoaded", function() {
  var classname = document.getElementsByClassName("feature-card")

  var loadPage = function() {
    var uri = this.getAttribute("data-url")
    location.href = uri
  };

  for (var i = 0; i < classname.length; i++) {
    classname[i].addEventListener('click', loadPage, false);
  }

  // Validate contact form
  // http://docs.jquery.com/Plugins/Validation
  $('contact-form').validate({
    submitHandler: function(form) {
      form.submit();
    }
  });
});
