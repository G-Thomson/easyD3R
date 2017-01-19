HTMLWidgets.widget({

  name: 'easyD3',

  type: 'output',

  factory: function(el, width, height) {

    // TODO: define shared variables for this instance
    var div = "#" + el.id;
    createSVG(div, width, height);

    return {

      renderValue: function(annotations) {

        // TODO: code to render the widget, e.g.
        annotate(div, annotations);

      },

      resize: function(width, height) {

        // TODO: code to re-render the widget with a new size

      }

    };
  }
});
