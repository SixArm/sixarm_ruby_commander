# -*- coding: utf-8 -*-
require 'minitest/autorun'
require 'simplecov'
SimpleCov.start
require 'sixarm_ruby_commander'

describe Kernel do
 
  describe ".commander" do

    it "does status" do
      status,stdout,stderr=commander('true')
      status.must_equal 0
      stdout.must_equal ""
      stderr.must_equal ""
    end

    it "does stdout" do
      status,stdout,stderr=commander('echo "foo"')
      status.must_equal 0
      stdout.must_equal "foo\n"
      stderr.must_equal ""
    end

    it "does stderr" do
      status,stdout,stderr=commander('echo "foo" >&2')
      status.must_equal 0
      stdout.must_equal ""
      stderr.must_equal "foo\n"
    end

  end

end

