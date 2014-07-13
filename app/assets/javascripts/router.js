// For more information see: http://emberjs.com/guides/routing/

App.Router.reopen({
  location: 'auto',
  rootURL: '/'
});

App.Router.map(function() {
  this.route('home', { path: '/'});
  this.route('history');
  this.route('stories');
  this.route('liberator');
  this.resource('squadrons', function() {
    this.route('319');
    this.route('320');
    this.route('321');
    this.route('400');
  });
  this.route('contact');
});
