Package.describe({
  summary: "A javascript text differencing implementation.",
  version: "2.0.1",
  git: "https://github.com/ovcharik/meteor-jsdiff"
});

Package.on_use(function (api) {
  api.add_files('vendor/dist/diff.js');
  api.add_files('export.js');

  if (api.export) {
    api.export('JsDiff');
  }
});

Package.on_test(function (api) {
  api.use(['ovcharik:jsdiff', 'underscore', 'tinytest', 'test-helpers']);
  api.add_files(['jsdiff-tests.js']);
});
