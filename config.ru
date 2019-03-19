require 'bundler'
require 'zxing'

run lambda {|env| [200, {'Content-Type' => 'text/plain'}, [ZXing.decode(env['QUERY_STRING'])]] }
