class Application

  def call(env)
    resp = Rack::Response.new

    num_1 = Kernel.rand(1..20)
    num_2 = Kernel.rand(1..20)
    num_3 = Kernel.rand(1..20)

    resp.write "Hello, my name is Mirna and you are not going to win this slots game."
    resp.write "#{num_1}\n aaaaand there we have a line break. \n"
    resp.write "#{num_2}\n aaand \n another another line break. \n"
    resp.write "#{num_3} \n shut up \n"

    if num_1==num_2 && num_2==num_3
      resp.write "You Win"
    else
      resp.write "You Lose"
    end

    resp.finish
  end

end
