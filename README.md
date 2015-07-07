# Ruby » <br> Commander is syntax sugar from Open4::spawn

* Doc: <http://sixarm.com/sixarm_ruby_commander/doc>
* Gem: <http://rubygems.org/gems/sixarm_ruby_commander>
* Repo: <http://github.com/sixarm/sixarm_ruby_commander>
* Email: Joel Parker Henderson, <joel@sixarm.com>


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


## Install quickstart

Install:

    gem install sixarm_ruby_commander

Bundler:

    gem "sixarm_ruby_commander", "~>1.1.0"

Require:

    require "sixarm_ruby_commander"


## Install with security (optional)

To enable high security for all our gems:

    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem
    gem sources --add http://sixarm.com

To install with high security:

    gem install sixarm_ruby_commander --trust-policy HighSecurity
