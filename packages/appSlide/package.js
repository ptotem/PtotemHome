Package.describe({
    summary: "Displaying a single slide"
});

Package.on_use(function (api, where) {
    api.use(['underscore', 'templating','handlebars', 'coffeescript', 'iron-router'], 'client');

    api.add_files('server.js', 'server');
    api.add_files('common.js', ['client', 'server']);
    api.add_files(['slideTemplates.html','client.coffee'], 'client');
});

