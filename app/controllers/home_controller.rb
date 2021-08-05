class HomeController < ApplicationController
  def index
    require 'uri'
    require 'net/http'
    require 'openssl'

    url = URI("https://air-quality.p.rapidapi.com/history/airquality?lon=74.329376&lat=31.582045")

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(url)
    request["x-rapidapi-key"] = 'c1f4f21d65msh2f78bdc24db42c1p1186a4jsn14ef2a0058f9'
    request["x-rapidapi-host"] = 'air-quality.p.rapidapi.com'

    @response = http.request(request)


    @output = @response.read_body
    @result = JSON.parse(@output)




  end

end
