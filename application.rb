class Application

  def call(env)
    resp = Rack::Response.new
    resp.write "WHADDUP BITCHES"
    resp.finish
  end

end
