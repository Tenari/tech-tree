$(function(){
  $('.add-step').click(function(e){
    e.preventDefault();
    fetch("/steps/new")
      .then((data) => data.text())
      .then((html) => {
        $('table.steps-table').append(html)
      });
  })

  $('.remove-step').click(function(e){
    e.preventDefault();
    $(this).parent().parent().remove();
  })
})
