const { webpackConfig, inliningCss, merge } = require('shakapacker')
const ReactRefreshWebpackPlugin = require('@pmmmwh/react-refresh-webpack-plugin')

const isDevelopment = process.env.NODE_ENV !== 'production'

// allows for HMR
if (isDevelopment && inliningCss) {
  webpackConfig.plugins.push(
    new ReactRefreshWebpackPlugin({
      overlay: {
        sockPort: webpackConfig.devServer.port,
      },
    })
  );
}


const customConfig = {
	resolve : {
		extensions: ['.css']
	}
}

module.exports = merge(webpackConfig, customConfig)
