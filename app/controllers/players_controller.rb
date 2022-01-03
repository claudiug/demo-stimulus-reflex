class PlayersController < ApplicationController
  def index
    @pagy, @players = pagy(Contact.all, page: 1)
    @active_players = Contact.where(active: true).load_async.count
  end
end
