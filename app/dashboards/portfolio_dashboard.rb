require "administrate/base_dashboard"

class PortfolioDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    logo: Field::Image,
    client: Field::String,
    scope: Field::Text,
    url: Field::String,
    image: Field::String,
    thumb: Field::Image,
    screen1: Field::String,
    screen2: Field::String,
    screen3: Field::String,
    screen4: Field::String,
    screen5: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    technologies: Field::HasMany,
    portfolio_wordpress: Field::BelongsTo,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
    id
    logo
    client
    url
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
    id
    logo
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
    client
    logo
    scope
    url
    image
    thumb
    screen1
    screen2
    screen3
    screen4
    screen5
    technologies
    portfolio_wordpress
  ].freeze

  # Overwrite this method to customize how portfolios are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(portfolio)
  #   "Portfolio ##{portfolio.id}"
  # end
end
