$(document).ready(function()
{
  var letter = $('#letter');
  if(letter.length > 0)
  {
    var why_me = $('#spread_the_word_why_it_matters_to_me');
    var what_it_is = $('#spread_the_word_what_it_is');
    var why_them = $('#spread_the_word_why_it_matters_to_them');
    var what_im_asking = $('#spread_the_word_what_im_asking_them_to_do');

    why_me.keyup(function(){
      composeLetter();
    })
    what_it_is.keyup(function(){
      composeLetter();
    })
    why_them.keyup(function(){
      composeLetter();
    })
    what_im_asking.keyup(function(){
      composeLetter();
    })

    function composeLetter()
    {
      $('#letter').html('<p>' + why_me.val() + '</p><p>' + what_it_is.val() + '</p><p>' + why_them.val() + '</p><p>' + what_im_asking.val() + '</p>');
    }

    composeLetter();

  }
});