require 'test/unit'
require 'sixarm_ruby_commander'

class Testing < Test::Unit::TestCase
 
 def test_commander
  status,stdout,stderr=commander('true')
  assert_equal(0,status)
  assert_equal('',stdout)
  assert_equal('',stderr)
 end

end

