$(document).ready(function() {
  // Suavizar a rolagem para as seções
  $(document).on('click', "a[href^='#']", function(e) {
    e.preventDefault();

    var target = this.hash;
    var $target = $(target);

    if ($target.length) {
      $('html, body').stop().animate({
        scrollTop: $target.offset().top - 20
      }, 1000);

      $('.navbar a').removeClass('active');
      $(this).addClass('active');
    }
  });

  // Adicionar classe 'active' ao link correspondente à seção visível
  $(window).on('scroll', function() {
    var scrollPosition = $(window).scrollTop();

    $(".section").each(function() {
      var sectionOffset = $(this).offset().top - 100;
      var sectionHeight = $(this).outerHeight();
      var sectionId = $(this).attr('id');

      if (scrollPosition >= sectionOffset && scrollPosition < (sectionOffset + sectionHeight)) {
        $('.navbar a').removeClass('active');
        $("a[href='#" + sectionId + "']").addClass('active');
      }
    });
  });

    // Inicializa o carrossel autoplay com o slick
  $(document).ready(function() {
  // Inicializa o carrossel autoplay com o slick
  $('.autoplay').slick({
    slidesToShow: 1,           // Número de slides visíveis
    slidesToScroll: 1,         // Número de slides por rolagem
    autoplay: true,            // Ativa a rotação automática
    autoplaySpeed: 3500,       // Velocidade da rotação (2000 ms = 2 segundos)
    dots: true,                // Ativa os pontos de navegação
    arrows: false              // Desativa as setas de navegação
  });
});



  // Alternância automática dos destaques
 // $("#destaques .scroll-content").each(function() {
 //   let scrollContainer = $(this);
  //  let items = scrollContainer.find(".item");
//    let totalItems = items.length;
//  let currentIndex = 0;

//    function showNextItem() {
//      currentIndex = (currentIndex + 1) % totalItems;
//      let offset = -100 * currentIndex;
//      scrollContainer.css("transform", `translateX(${offset}%)`);
//    }

//    setInterval(showNextItem, 5000); // Alterna a cada 5 segundos
//  });//
});
