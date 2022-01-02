# frozen_string_literal: true

class PlayerReflex < ApplicationReflex
  def paginate
    pagy, players = pagy(Contact.all, page: page)
    players = players.order("#{column} #{element.dataset.direction}")
    morph '#players', render(partial: 'players/players', locals: { players: players })
    morph '#paginator', render(partial: 'players/paginator', locals: { pagy: pagy })
    update_direction
    insert_indicator
  end

  def search(query)
    players = if query.present?
                Contact.search(query)
              else
                Contact.all
              end
    pagy, players = pagy(players, page: page)
    morph '#paginator', render(partial: 'players/paginator', locals: { pagy: pagy })
    morph '#players', render(partial: 'players/players', locals: { players: players })
  end

  def page
    element.dataset[:page].to_i.zero? ? 1 : element.dataset[:page].to_i
  end

  def edit
    player = Contact.find(element.dataset.id)
    morph dom_id(player), render(partial: 'players/edit', locals: { player: player })
  end

  def update_direction
    cable_ready
      .set_dataset_property(
        selector: "##{element.id}",
        name: 'direction',
        value: next_direction(element.dataset.direction)
      )
  end

  def insert_indicator
    cable_ready
      .prepend(
        selector: "##{element.id}",
        html: render(
          partial: 'players/sort_indicator',
          locals: { direction: element.dataset.direction }
        )
      )
  end

  def next_direction(direction)
    direction == 'asc' ? 'desc' : 'asc'
  end

  def update
    player = Contact.find(element.dataset.id)
    if element.dataset.active == 'false'
      player.update(active: true)
    else
      player.update(active: false)
    end
    morph dom_id(player), render(partial: 'players/player', locals: { player: player })
    # cable_ready
    #   .set_dataset_property(
    #     selector: "##{element.id}",
    #     name: 'active',
    #     value: contact.active
    #   )
  end

  # def direction
  #   'asc' if element.dataset.direction.nil?
  #   if element.dataset.direction == 'asc'
  #     'desc'
  #   else
  #     'asc'
  #   end
  # end

  def column
    element.dataset.column
  end
end
