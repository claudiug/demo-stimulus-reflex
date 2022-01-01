class Contact < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search, against: %i[name company email age], using: { tsearch: { prefix: true } }
end
