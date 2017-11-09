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


<!--install-opent-->

## Install

To install using a Gemfile, add this:

    gem "sixarm_ruby_commander", ">= 1.1.1", "< 2"

To install using the command line, run this:

    gem install sixarm_ruby_commander -v ">= 1.1.1, < 2"

To install using the command line with high security, run this:

    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem && gem sources --add http://sixarm.com
    gem install sixarm_ruby_commander -v ">= 1.1.1, < 2" --trust-policy HighSecurity

To require the gem in your code:

    require "sixarm_ruby_commander"

<!--install-shut-->
