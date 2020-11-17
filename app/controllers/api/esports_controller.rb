class Api::EsportsController < ApplicationController
  def index
    response = HTTP
      .headers("Authorization" => "Bearer #{Rails.application.credentials.esports_api[:api_key]}")
      .get("https://api.pandascore.co/#{params[:search]}/matches")
    render json: response.parse
  end
end
