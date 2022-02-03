class UController < ApplicationController
  def show
    @url = Url.find_by(short_url: params[:id])
    redirect_to @url[:long_url]
  end
end
