$(document).ready(function () {
  var $grid = $('.grid').isotope({
    itemSelector: '.character-box',
    layoutMode: 'fitRows'
  });

  $('.button-group').on('click', 'button', function () {
    var $button = $(this);

    // Marca como seleccionado visualmente
    $button.siblings().removeClass('is-checked');
    $button.addClass('is-checked');

    // Aplica solo el filtro seleccionado (sin combinar con otros grupos)
    var filterValue = $button.attr('data-filter');
    $grid.isotope({ filter: filterValue });
  });
});
