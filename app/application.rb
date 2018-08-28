class Application
 
  def call(env)
    resp = Rack::Response.new
    time = Time.new
    currenttime = time.now
    
    if currenttime.hour <= 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    
    resp.finish
  end
 
end