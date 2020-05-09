const fs = require('fs');

module.exports = class VersionFilePlugin {
    constructor(config) {
        this.config = config;
        this.name = 'version-file';
    }

    /**
     * Setup the plugin
     * @param {import('@auto-it/core').default} auto
     */
    apply(auto) {
        import {
            execPromise
        } from '@auto-it/core';

        // hook into auto
        auto.hooks.beforeCommitChangelog.tap(
            'VersionFile',
            async ({ currentVersion, commits, releaseNotes, lastRelease }) => {
                // do something
                fs.writeFileSync('./VERSION', currentVersion);
                await execPromise("git", ["add", "README.md"]);
            }
        );
    }
};