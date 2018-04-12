
function copyToClipboard(url) {
  var $temp = $("<input>");
  $("body").append($temp);
  $temp.val(site_url+"/"+url).select();
  document.execCommand("copy");
  $temp.remove();
}

$('.copyURLButton').on('click', function(event){
    event.preventDefault();
    //console.log(event)
    //console.log(event.target)
    var $temp = $("<input>");
    $("body").append($temp);
    $temp.val(site_url+"/"+$(event.target).data('url')).select();
    document.execCommand("copy");
    $temp.remove();

    var tempcolor = $(event.target).css("background-color");
    var temptext = $(event.target).text();

    $(event.target).css("background-color", "blue");
    $(event.target).text("Ссылка скопирована");

    setTimeout(function(){
      $(event.target).css("background-color", tempcolor);
      $(event.target).text(temptext);
    },1000)
})
