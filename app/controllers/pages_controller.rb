class PagesController < ApplicationController
  layout :erb, only: :erb
  layout :haml, only: :haml
  layout :slim, only: :slim

  before_action :set_data

  def erb
  end

  def haml
  end

  def slim
  end

  private

  def set_data
    @users = User.includes(:skills)
  end
end
