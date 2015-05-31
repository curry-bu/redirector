TARGET_URL = ENV.fetch('TARGET_URL')

run proc { |env|
  request = Rack::Request.new(env)
  Rack::Response.new { |response|
    response.redirect File.join(TARGET_URL, request.fullpath), 301
  }
}
