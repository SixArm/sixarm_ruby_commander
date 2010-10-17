=begin rdoc

= SixArm Ruby Gem: Commander is syntax sugar from Open4::spawn

Author:: Joel Parker Henderson, joelparkerhenderson@gmail.com
Copyright:: Copyright (c) 2006-2010 Joel Parker Henderson
License:: CreativeCommons License, Non-commercial Share Alike
License:: LGPL, GNU Lesser General Public License

Kernel#commander sugar method wrapper for Open4::spawn

==Syntax
   commander(command, option=>value, option=>value, ...)

 ==Example
   commander('ls') 
   => Open4::spawn('ls',:stdout=>'',:stderr=>'')
   => 'ls', {}, status, stdout, stderr

Any options will be sent along to the spawn method.

=end


require 'open4'

module Kernel

  # Spawn a command with Open4::spawn
  #
  # Optional args are the same as Open4::spawn (stdin, stdout, stderr).
  #
  # Return status, stdout, stderr
 
  def commander(command,args={}) #=> status exit code, stdout string, stderr string
   stdin=args['stdin']||nil
   stdout=args['stdout']||''
   stderr=args['stderr']||''
   status = Open4::spawn(command,'stdin'=>stdin,'stdout'=>stdout,'stderr'=>stderr)
   return status,stdout,stderr
  end

end
