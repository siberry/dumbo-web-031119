require 'pry'

class App

  def call(environment_hash)

    status_code = 418
    header = { "Content-type" =>  "text/html" }


    if environment_hash["REQUEST-PATH"] == "/teapot"
      body = ["I'm a little teapot"]

    # binding.pry
    body = ["Hello, world"]

    return [status_code, header, body]
  end

end
