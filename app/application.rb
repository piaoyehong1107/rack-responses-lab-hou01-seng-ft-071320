class Application
  def call(env)
    resp=Rack::Response.new 
    time=Time.new
    #resp.write "#{time.hour}"
    if time.hour>12
      resp.write "Good afternoon!"
    elsif time.hour<12
      resp.write "Good morning!"
    end
    resp.finish
  end
end
    