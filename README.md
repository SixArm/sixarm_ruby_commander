# SixArm.com → Ruby → <br> Commander is syntax sugar from Open4::spawn

* Doc: <http://sixarm.com/sixarm_ruby_commander/doc>
* Gem: <http://rubygems.org/gems/sixarm_ruby_commander>
* Repo: <http://github.com/sixarm/sixarm_ruby_commander>
<!--header-shut-->


## Introduction

Kernel#commander sugar wrapper for Open4::spawn

Syntax:

    commander(command, option=>value, option=>value, ...)

Example:

    commander('ls')
    #=> Open4::spawn('ls',:stdout=>'',:stderr=>'')
    #=> 'ls', {}, status, stdout, stderr

Any options will be sent along to the spawn method.

For docs go to <http://sixarm.com/sixarm_ruby_commander/doc>

Want to help? We're happy to get pull requests.


<!--install-open-->

## Install

### Gem

To install this gem in your shell or terminal:

    gem install sixarm_ruby_commander

### Gemfile

To add this gem to your Gemfile:

    gem 'sixarm_ruby_commander'

### Require

To require the gem in your code:

    require 'sixarm_ruby_commander'

<!--install-shut-->
