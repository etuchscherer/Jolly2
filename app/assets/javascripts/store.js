// http://emberjs.com/guides/models/using-the-store/

App.Store = DS.Store.extend({});
// App.ApplicationAdapter = DS.ActiveModelAdapter.extend({});

DS.RESTAdapter.reopen({
  namespace: 'api/v1/'
});

