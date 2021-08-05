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
    @final = @result['data'][0]['aqi']

    if @final >= 50
      @api_color = 'green'
    elsif  @final >= 51 && @final <= 100
      @api_color = 'yellow'
    elsif  @final >= 101 && @final <= 150
      @api_color = 'orange'
    elsif  @final >= 151 && @final <= 200
      @api_color = 'red'
    elsif  @final >= 201 && @final <= 250
      @api_color = 'purple'
    elsif  @final >= 251 && @final <= 500
      @api_color = 'maroon'
    end




  end
end
