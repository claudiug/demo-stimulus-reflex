# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Pagy::Backend
  before_action :check_reflex

  def check_reflex
    render layout: false if @stimulus_reflex
  end
end
