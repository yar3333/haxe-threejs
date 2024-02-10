const path = require('path');

module.exports = {
    mode: 'development',
    entry: './build.hxml',
    module: {
        rules: [
          {
            test: /\.hxml$/,
            loader: 'haxe-loader',
            options: {
              debug: true
            }
          }
        ],
    },
    output: {
        filename: 'bundle.js',
        path: path.resolve(__dirname, 'dist'),
    }
};