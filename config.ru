TARGET_URL = ENV['TARGET_URL'] || exit

run proc { |env|
  request = Rack::Request.new(env)
  Rack::Response.new { |response|
    response.redirect File.join(TARGET_URL, request.fullpath), 301
  }
}
