$:.unshift(File.join(File.dirname(__FILE__), '../lib'))
$:.unshift(File.join(File.dirname(__FILE__), 'fixtures'))
require "minitest/autorun"
require "aasm/graph"