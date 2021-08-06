class HomeController < ApplicationController
  def index
    require 'uri'
    require 'net/http'
    require 'openssl'

    url = URI('https://air-quality.p.rapidapi.com/history/airquality?lon=74.329376&lat=31.582045')

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(url)
    request['x-rapidapi-key'] = 'c1f4f21d65msh2f78bdc24db42c1p1186a4jsn14ef2a0058f9'
    request['x-rapidapi-host'] = 'air-quality.p.rapidapi.com'

    @response = http.request(request)


    @output = @response.read_body
    @result = JSON.parse(@output)
    @final = @result['data'][0]['aqi']

    if @final >= 50
      @api_color = 'green'
      @api_description = 'Enjoy your usual outdoor activities. Ideal air quality for outdoor activities'
    elsif  @final >= 51 && @final <= 100
      @api_color = 'yellow'
      @api_description = ' Consider reducing or rescheduling strenuous activities outdoors if you are experiencing
                           symptoms. No need to modify your usual outdoor activities unless you experience
                           symptoms such as coughing and throat irritation.'
    elsif  @final >= 101 && @final <= 150
      @api_color = 'orange'
      @api_description = 'Reduce or reschedule strenuous activities outdoors.
                          Children and the elderly should also take it easy.
                          Consider reducing or rescheduling strenuous activities outdoors if you experience symptoms
                          such as coughing and throat irritation.'
    elsif  @final >= 151 && @final <= 200
      @api_color = 'red'
      @api_description = 'Sensitive groups: Avoid strenuous outdoor activities.
                          Everyone: Cut back or reschedule strenuous outdoor activities'

    elsif  @final >= 201 && @final <= 250
      @api_color = 'purple'
      @api_description = 'Sensitive groups: Avoid all outdoor physical activities.
                          Everyone: Significantly cut back on outdoor physical activities'

    elsif  @final >= 251 && @final <= 500
      @api_color = 'maroon'
      @api_description = 'Healthy people will experience reduced endurance in activities and may also show noticeably
                          strong symptoms. Other illnesses may be triggered in healthy people.
                          Elders and the sick should remain indoors and avoid exercise.
                          Healthy individuals should avoid outdoor activities.'
    end




  end
end
