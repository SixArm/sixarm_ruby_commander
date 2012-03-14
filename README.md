# SixArm.com » Ruby » <br> Commander is syntax sugar from Open4::spawn

* Docs: <http://sixarm.com/sixarm_ruby_commander/doc>
* Repo: <http://github.com/sixarm/sixarm_ruby_commander>
* Email: Joel Parker Henderson, <joel@sixarm.com>


## Introduction

Kernel#commander sugar method wrapper for Open4::spawn

For docs go to <http://sixarm.com/sixarm_ruby_commander/doc>

Want to help? We're happy to get pull requests.


## Quickstart

Install:

    gem install sixarm_ruby_commander

Bundler:

    gem "sixarm_ruby_commander", "=1.0.2"

Require:

    require "sixarm_ruby_commander"


## Syntax

    commander(command, option=>value, option=>value, ...)


## Example

    commander('ls') 
    #=> Open4::spawn('ls',:stdout=>'',:stderr=>'')
    #=> 'ls', {}, status, stdout, stderr

Any options will be sent along to the spawn method.

