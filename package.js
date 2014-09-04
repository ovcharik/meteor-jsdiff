Package.describe({
  summary: "A javascript text differencing implementation.",
  version: "1.0.8",
  git: "https://github.com/ovcharik/meteor-jsdiff"
});

Package.on_use(function (api, where) {
  where = where || ['client', 'server'];

  api.versionsFrom && api.versionsFrom("METEOR@0.9.0");

  api.add_files('vendor/diff.js', where);
  api.add_files('main.js', where);

  if (api.export) {
    api.export('JsDiff', where);
  }
});
