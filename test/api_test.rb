require 'test_helper'
require_relative '../api/app'

class MyApp::APITest < Minitest::Test
  include Rack::Test::Methods

  def app
    MyApp::API
  end

  # GET api/v0/hello => {'text': 'hello'}
  def test_get_hello_says_hello
    # skip
    get '/api/v0/hello'
    assert last_response.ok?, "Response wasn't ok: " \
                              "#{last_response.body.inspect}."
    assert_equal({ 'text' => 'Hello' }.to_json, last_response.body, 'WTF?')
  end
end
