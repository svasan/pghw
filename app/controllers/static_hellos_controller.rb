class StaticHellosController < ApplicationController

  before_action :check_accept, only: [:index, :create]

  def index
    @needs_json ? render_json : render_html
  end

  def create
    @needs_json ? render_json : render_html
  end

  private

  def check_accept
    @needs_json = request.headers['Accept'] == 'application/json'
  end

  def render_html
    render html: helpers.tag.h1('Hello World')
  end

  def render_json
    render json: {message: "Good Morning"}
  end
end
