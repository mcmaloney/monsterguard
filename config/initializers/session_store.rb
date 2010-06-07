# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_monsterguard_session',
  :secret      => '4e1d135e595535ce1191dbb039bbd0f789b6235ea5817c5fd6280155c2863febc9d7fbe8234dd95807e50f079fad3e46e966d4140f9cc071fd2ef7c42925daeb'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
