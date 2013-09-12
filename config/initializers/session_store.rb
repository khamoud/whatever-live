# Be sure to restart your server when you modify this file.

#SpreeDash::Application.config.session_store :cookie_store, key: '_spree_dash_session'
if Rails.env.production?
SpreeDash::Application.config.session_store :cookie_store, {:key => '_cookie_name', :domain => :all}
else
SpreeDash::Application.config.session_store :cookie_store, :key => '_cookie_name'
end
# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rails generate session_migration")
# SpreeDash::Application.config.session_store :active_record_store
