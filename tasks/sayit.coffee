#
# grunt-sayit
# https://github.com/adamloving/grunt-sayit
# 
# Copyright (c) 2013 Adam Loving
# Licensed under the MIT license.
# 
"use strict"

exec = require('child_process').exec

AFFIRMATIONS = ['all good', 'keep it coming', 'yeah baby', 'i like it', 
                   'you\'re good', 'that\'s it', 'nailed it', 'mmm hmmm', 'sweet', 'keep it up', 'yep']

module.exports = (grunt) ->
  
  # Please see the Grunt documentation for more information regarding task
  # creation: http://gruntjs.com/creating-tasks
  grunt.registerMultiTask "say", "Executes the Mac OS say command with the specified string.", ->
    
    if @data.affirmation
      affirmation = AFFIRMATIONS[Math.round(Math.random()*(AFFIRMATIONS.length-1))] 
      exec("say #{affirmation}")
    else if @data.message
      exec("say #{data.message}")

    grunt.log.writeln("say #{@target} #{@data}")