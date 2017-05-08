require 'lyft'

class PagesController < ApplicationController
  def home
    render("home.html.erb")
  end

  def redirect
    client_id = "Th3QWxlQXz9y"
    client_secret = "uT1UNWMpklCuxiJk9QG6LUt71cDJt6hE"

    @client = Lyft::Client.new(
      client_id: client_id,
      client_secret: client_secret,
      debug_output: STDOUT,
      use_sandbox: true
    )

    @response = @client.oauth.retrieve_access_token authorization_code: params[:code]

    session[:lyft_access_token] = @response.access_token

    redirect_to "/"
  end

  def profile
    headers = { "Authorization" => "Bearer #{session[:lyft_access_token]}" }

    # headers = { "Authorization: Bearer #{session[:lyft_access_token]}" }.to_json
    response = HTTParty.get('https://api.lyft.com/v1/profile', headers: headers)
    raise response.inspect

  end
end
