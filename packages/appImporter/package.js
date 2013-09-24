Package.describe({
  summary: "Import Data into the app"
});

Npm.depends({
    'mongodb': '2.2.4'
});

Package.on_use(function (api, where) {
  api.add_files('appImporter.js', ['client', 'server']);
});
