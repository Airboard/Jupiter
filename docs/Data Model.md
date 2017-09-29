# Date Model

Airboard is using MongoDB for data storage. With more functions to support, the data sets are getting bigger and complex. NoSql database is a good fit for this agile environment.

## user
  - _id
  - username
  - user_status
  - email
  - create_time
  - expire_time
  - last_login_time
  - last_geolocation
  - user_reaction_history
  - influence_level
  - influence_timestamp


## profile
  - _id
  - nickname
  - bio
  - contacts
  - preference_list
  - profile_photo


## user_authentication
  - _id
  - user_id
  - password_hash
  - token


## message
  - _id
  - message_status
  - text_content
  - multimedia_list
  - impact_level
  - impact_timestamp
  - user_id
  - message_pool_id
  - create_time
  - last_edit_time
  - potential_expire_time
  - last_poll_time
  - message_reaction_history_id
  - location_bitmap
  - geolocation


## message_pool
  - _id
  - location_priority_bitmap
  - message_id
  - impact_level


## user_reaction_history
  - _id
  - user_id
  - message_id
  - reaction_list
  - timestamp


## message_reaction_history
  - _id
  - message_id
  - reaction_list
  - update_time
