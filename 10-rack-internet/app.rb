require 'pry'

class App

  def call(environment_hash)

    status_code = 418
    header = { "Content-type" =>  "text/html" }

<<<<<<< HEAD
    binding.pry
    if environment_hash["REQUEST_PATH"] == "/teapot"
      body = ["I'm a little teapot"]
    else
      body = ["Hello world"]
    end
=======

    if environment_hash["REQUEST-PATH"] == "/teapot"
      body = ["I'm a little teapot"]

    # binding.pry
    body = ["Hello, world"]
>>>>>>> serena

    return [status_code, header, body]
  end

end
