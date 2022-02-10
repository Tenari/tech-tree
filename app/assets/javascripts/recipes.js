const addAllListeners = function(){
  $('.add-table-item').click(function(e){
    e.preventDefault();
    e.stopPropagation();
    const table = $(this).parent().find('table');
    console.log(table);
    fetch($(this).data('url'))
      .then((data) => data.text())
      .then((html) => {
        $(table).append(html)
        removeListeners();
        addAllListeners();
      });
  })

  $('.remove-table-item').click(function(e){
    e.preventDefault();
    e.stopPropagation();
    $(this).parent().parent().remove();
  })
}

const removeListeners = function(){
  $('.add-table-item').off('click');
  $('.remove-table-item').off('click');
}
$( document ).ready( addAllListeners );
