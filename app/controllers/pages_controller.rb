class PagesController < ApplicationController
  def home
    render("home.html.erb")
  end

  def redirect
    client_id = "Th3QWxlQXz9y"
    client_secret = "uT1UNWMpklCuxiJk9QG6LUt71cDJt6hE"
    response = HTTParty.post('https://api.lyft.com/oauth/token', headers: {"Content-Type" => "application/json", "Authorization" => "Basic base64(#{client_id}:#{client_secret})"},  body: {"grant_type" => "authorization_code", "code" => params[:code]}.to_json )
    raise response.inspect
    render()
  end
end
