# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_runtime_session',
  :secret      => 'a3ebb05ebf6ad84b8a82f26cf9b0e741823b7504e4ebfd23261a46023f69fa5cb3b1f3a8aa47eb36ab44f4b142d48eb15f0fbb5ebd33c2fbb24213a919d61fd2'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
