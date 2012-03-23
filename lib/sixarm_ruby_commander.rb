# -*- coding: utf-8 -*-
=begin rdoc
Please see README
=end


require 'open4'

module Kernel

  # Spawn a command with Open4::spawn
  #
  # Optional args are the same as Open4::spawn (stdin, stdout, stderr).
  #
  # @example
  #
  #     commander('ls')
  #
  # @example with streams
  #
  #     commander('mycommand', :stdin => 'hello', :stdout => '', :stderr => '')
  #
  # @return [status, stdout, stderr]

  def commander(command,args={}) #=> status exit code, stdout string, stderr string
   stdin=args['stdin']||args[:stdin]||nil
   stdout=args['stdout']||args[:stdout]||''
   stderr=args['stderr']||args[:stderr]||''
   status = Open4::spawn(command,'stdin'=>stdin,'stdout'=>stdout,'stderr'=>stderr)
   return status,stdout,stderr
  end

end
