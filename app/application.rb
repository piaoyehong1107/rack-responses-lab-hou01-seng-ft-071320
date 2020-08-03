class Application
  def call(env)
    resp=Rack::Response.new 
    time=Time.now
    #resp.write "#{time.hour}"
    if time.hour>=12
      resp.write "Good afternoon!"
    else Time.hour<12
      resp.write "Good morning!"
    end
    resp.finish
  end
end
    