require 'rack'

app = Proc.new do |env|
  req = Rack::Request.new(env)
  res = Rack::Response.new
  res['content_type'] = 'text/html'
  res.write(req.path)
  res.finish
end

Rack::Server.start(
  app: app,
  port: 3000
)
