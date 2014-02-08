require 'rubygems'
require 'test/unit'
require 'shoulda'
require 'httparty'
require 'coveralls'

Coveralls.wear!

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'guardian-content'

class Test::Unit::TestCase
end
