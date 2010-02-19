# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_easyoe_session',
  :secret      => '3f1b84f9eefcda429296e9af3ca4b61f4cbf0c9aa683f319097d5d817d3d64bd503124934d853c17cd5620232993e8ff85363670e1cba3421b198e5136065e3c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
