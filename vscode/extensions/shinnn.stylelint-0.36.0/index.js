'use strict';

const {join} = require('path');

const {LanguageClient, SettingMonitor} = require('vscode-languageclient');
const {workspace} = require('vscode');
const {activationEvents} = require('./package.json');

const documentSelector = [];

for (const activationEvent of activationEvents) {
	if (activationEvent.startsWith('onLanguage:')) {
		documentSelector.push(activationEvent.replace('onLanguage:', ''));
	}
}

exports.activate = ({subscriptions}) => {
	const serverPath = join(__dirname, 'server.js');

	const client = new LanguageClient('stylelint', {
		run: {
			module: serverPath
		},
		debug: {
			module: serverPath,
			options: {
				execArgv: ['--nolazy', '--debug=6004']
			}
		}
	}, {
		documentSelector,
		synchronize: {
			configurationSection: 'stylelint',
			fileEvents: workspace.createFileSystemWatcher('**/{.stylelintrc{,.js,.json,.yaml,.yml},stylelint.config.js}')
		}
	});

	subscriptions.push(new SettingMonitor(client, 'stylelint.enable').start());
};
