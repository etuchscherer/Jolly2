// For more information see: http://emberjs.com/guides/routing/

App.Router.reopen({
  location: 'auto',
  rootURL: '/'
});

App.Router.map(function() {
  this.route('home');
  this.route('history');
  this.route('stories');
  this.route('liberator');
  this.route('about');
  this.route('contact');
});
