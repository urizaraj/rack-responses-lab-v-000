class Application
  def call
    resp = Rack::Response.new
    hour = Time.new.hour
    hour >= 12 ? "Good Afternoon!" : "Good Morning!"
  end
end