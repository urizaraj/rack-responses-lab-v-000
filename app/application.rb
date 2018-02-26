class Application
  def call(env)
    resp = Rack::Response.new
    hour = Time.new.hour
    msg = hour >= 12 ? "Good Afternoon!" : "Good Morning!"
    resp.write msg
    resp.finish
  end
end
