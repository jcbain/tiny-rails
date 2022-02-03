class UrlsController < ApplicationController

  before_action :authorized

  def index
    user_id = session[:user_id]
    @urls = Url.where(user_id: user_id).take(10)
  end

  def new
    @url = Url.new
  end

  def create
    long_url = has_http?(params[:url][:long_url])
    short_url = create_short_url(6)
    user_id = session[:user_id]

    Url.create(long_url: long_url, short_url: short_url, user_id: user_id)
    redirect_to '/urls'
  end

  def show
    @url = Url.find_by(id: params[:id])
  end

  def create_short_url(length)
    rand(36 ** length).to_s(36)
  end

  def has_http?(url)
    if url.start_with?('http')
      url
    else
      'http://' + url
    end
  end
end
