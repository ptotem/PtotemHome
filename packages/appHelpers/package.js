Package.describe({
  summary: "Handlebar Helpers for the Application"
});

Package.on_use(function (api, where) {
  api.use(['underscore', 'templating','handlebars', 'coffeescript'], 'client');
  api.add_files(['helperTemplates.html','handlebar-helpers.coffee','helpers.coffee','template-definitions.coffee'], 'client');
});


