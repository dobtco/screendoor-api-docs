# We were getting weird false positives here.
# Not sure why the crawler is crawling javascript?
IGNORE_LINK_CHECKER_FALSE_POSITIVES = (crawler) ->
  crawler.addFetchCondition (url) ->
    !url.path.match('strictMode') &&
    !url.path.match('.js')

module.exports = (grunt) ->
  grunt.loadNpmTasks 'grunt-link-checker'
  grunt.loadNpmTasks 'grunt-gh-pages'
  grunt.loadNpmTasks 'grunt-shell'

  grunt.initConfig
    pkg: '<json:package.json>'

    'link-checker':
      options:
        maxConcurrency: 20
      dev:
        site: 'localhost'
        options:
          initialPort: 4567
          callback: IGNORE_LINK_CHECKER_FALSE_POSITIVES

    shell:
      build:
        command: 'bundle exec middleman build'

    'gh-pages':
      options:
        base: 'build'
        message: 'Deploy (via Grunt)'
      production:
        src: ['**']
        options:
          repo: 'https://github.com/dobtco/screendoor-api-docs.git'

  grunt.registerTask 'deploy:production', ['shell:build', 'gh-pages:production']
