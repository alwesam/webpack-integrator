const path                      = require('path');

module.exports = {

  entry: {
    'index': [
     './src/index.js', 
    ],
  },

  output: {
    filename:  '[name]-bundle.js',
    path: path.resolve(__dirname,'..','public','webpack'),
  },

  module: {
    rules: [
      {
        test: /\.jsx?$/,
        use: 'babel-loader',
        exclude: /node_modules/
      },
    ]
  },

};
