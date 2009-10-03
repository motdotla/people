# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_people_session',
  :secret      => 'd9e56a63d26d3e4014288318d10c1519ed702b3747bc594f9b6e838d7765b1496968de519329b27c6b11118b808996dd5aa1871ee0e4a6afd32425e9a4e5eff0'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
