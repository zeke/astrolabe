# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_astrolabe_session',
  :secret      => 'b59415fc869905b13e7142b7928aa8d475a562039641d7b2d79aa2a78d04b84217886ce3661748b11c7bd30a41276e14414e376f3a61d42cf3a0bac43a125a13'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
