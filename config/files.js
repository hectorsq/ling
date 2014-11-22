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
        "vendor/js/angular-1.3.3.js",
        "vendor/js/lodash.js",
        "vendor/js/angular-ui-router-0.2.13.js",
        "vendor/js/ui-bootstrap-tpls-0.12.0.js",
        "vendor/js/devise-0.5.0.js"
      ]
    }

  };
};
