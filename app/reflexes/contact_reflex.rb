# frozen_string_literal: true

class ContactReflex < ApplicationReflex
  def sort
    pagy, contacts = pagy(Contact.all, page: element.dataset[:page].to_i)
    morph '#paginator', render(partial: 'contacts/paginator', locals: { pagy: pagy })
    morph '#contacts', render(partial: 'contacts/contacts', locals: { contacts: contacts })
  end

  private

  # def next_direction(direction)
  #   direction == 'asc' ? 'desc' : 'asc'
  # end
  #
  # def set_sort_direction
  #   cable_ready
  #     .set_dataset_property(
  #       selector: "##{element.id}",
  #       name: 'direction',
  #       value: next_direction(element.dataset.direction)
  #     )
  # end
  #
  # def insert_indicator
  #   cable_ready
  #     .prepend(
  #       selector: "##{element.id}",
  #       html: render(
  #         partial: 'contacts/sort_indicator',
  #         locals: { direction: element.dataset.direction }
  #       )
  #     )
  # end
end
