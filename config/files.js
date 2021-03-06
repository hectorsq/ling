/* Exports a function which returns an object that overrides the default &
 *   plugin file patterns (used widely through the app configuration)
 *
 * To see the default definitions for Lineman's file paths and globs, see:
 *
 *   - https://github.com/linemanjs/lineman/blob/master/config/files.coffee
 */
module.exports = function(lineman) {
  //Override file patterns here
  return {

    js: {
      vendor: [
        "vendor/js/angular-1.3.16.js",
        "vendor/js/lodash-3.9.3.js",
        "vendor/js/angular-ui-router-0.2.15.js",
        "vendor/js/ui-bootstrap-tpls-0.13.0.js",
        "vendor/js/angular-devise-1.1.0.js"
      ]
    }

  };
};
