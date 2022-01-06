# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include CableReady::Broadcaster
  include Pagy::Backend
  before_action :check_reflex

  def check_reflex
    p @stimulus_reflex
    p controller_path
    p action_name
    p self.class.name
    render layout: false if @stimulus_reflex
  end
end
