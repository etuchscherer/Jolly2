App.BadgeView = Ember.View.extend({
  templateName: 'badgeView',

  classNames: ['badge-content'],

  classNameBindings: ['active'],

  selected: false,

  click: function(e) {
    e.stopPropagation();
    el = $(e.target).closest('p');
    this.set('selected', el.data('sprite'));
    this.highlight();
  },

  active: function() {
    return this.get('selected');
  }.property('selected'),

  highlight: function() {
    this.removeHighlights();
    $('p.' + this.get('selected')).addClass('highlight');
  },

  removeHighlights: function() {
    $('p.highlight').removeClass('highlight');
  }
});