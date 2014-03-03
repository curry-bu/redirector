TARGET_URL = ENV['TARGET_URL'] || exit

run lambda { |env|
  request = Rack::Request.new(env)
  Rack::Response.new { |response|
    response.redirect TARGET_URL, 301
  }
}
