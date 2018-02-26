class Application
  def call
    resp = Rack::Response.new
    hour = Time.new.hour
    msg = hour >= 12 ? "Good Afternoon!" : "Good Morning!"
    resp.write msg
    resp.finish
  end
end