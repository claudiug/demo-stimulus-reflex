class PlayersController < ApplicationController
  def index
    @pagy, @players = pagy(Contact.all, page: 1)
  end
end
