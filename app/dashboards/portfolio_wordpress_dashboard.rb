require "administrate/base_dashboard"

class PortfolioWordpressDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    ID: Field::Number,
    post_author: Field::Number,
    post_date: Field::DateTime,
    post_date_gmt: Field::DateTime,
    post_content: Field::Text,
    post_title: Field::Text,
    post_excerpt: Field::Text,
    post_status: Field::String,
    comment_status: Field::String,
    ping_status: Field::String,
    post_password: Field::String,
    post_name: Field::String,
    to_ping: Field::Text,
    pinged: Field::Text,
    post_modified: Field::DateTime,
    post_modified_gmt: Field::DateTime,
    post_content_filtered: Field::Text,
    post_parent: Field::Number,
    guid: Field::String,
    menu_order: Field::Number,
    post_type: Field::String,
    post_mime_type: Field::String,
    comment_count: Field::Number,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
    ID
    post_author
    post_date
    post_date_gmt
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
    ID
    post_author
    post_date
    post_date_gmt
    post_content
    post_title
    post_excerpt
    post_status
    comment_status
    ping_status
    post_password
    post_name
    to_ping
    pinged
    post_modified
    post_modified_gmt
    post_content_filtered
    post_parent
    guid
    menu_order
    post_type
    post_mime_type
    comment_count
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
    ID
    post_author
    post_date
    post_date_gmt
    post_content
    post_title
    post_excerpt
    post_status
    comment_status
    ping_status
    post_password
    post_name
    to_ping
    pinged
    post_modified
    post_modified_gmt
    post_content_filtered
    post_parent
    guid
    menu_order
    post_type
    post_mime_type
    comment_count
  ].freeze

  # Overwrite this method to customize how portfolio wordpresses are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(portfolio_wordpress)
    "#{portfolio_wordpress.post_title} - ##{portfolio_wordpress.ID}"
  end
end
