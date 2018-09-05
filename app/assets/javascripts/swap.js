


docReady( function() {

  var slidesElem = document.querySelector('.all-slides');
  var slideSize = getSize( document.querySelector('.slide') );
  var pckry = new Packery( slidesElem, {rowHeight: slideSize.outerHeight});

  // get item elements
  var itemElems = pckry.getItemElements();
  // for each item...
  for ( var i=0, len = itemElems.length; i < len; i++ ) {
    var elem = itemElems[i];

    // make element draggable with Draggabilly
    var draggie = new Draggabilly( elem, {
      axis: 'xy'
    });
    // bind Draggabilly events to Packery
    pckry.bindDraggabillyEvents( draggie );
  }

});