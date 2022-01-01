# frozen_string_literal: true

class PlayerReflex < ApplicationReflex
  include Pagy::Backend

  def paginate
    pagy, players = pagy(Contact.all, page: element.dataset[:page].to_i)
    morph '#paginator', render(partial: 'players/paginator', locals: { pagy: pagy })
    morph '#posts', render(partial: 'players/players', locals: { players: players })
  end
end
