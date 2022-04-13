const { environment } = require('@rails/webpacker')

// Preventing Babel from transpiling NodeModules packages
environment.loaders.delete('nodeModules');

var webpack = require('webpack'); environment.plugins.append(
  'Provide',
  new webpack.ProvidePlugin({
    $: 'jquery',
  })
)
module.exports = environment
