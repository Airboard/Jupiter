# Date Model

Airboard is using MongoDB for data storage. With more functions to support, the data sets are getting bigger and complex. NoSql database is a good fit for this agile environment. 

## User
 - _id
 - username
 - email
 - create_time
 - expire_time
 - last_login_time
 - last_geolocation
 - impact


## Message
 - _id
 - content
 - impact
 - author
 - create_time
 - expire_time
 - geolocation

## Push history
 - _id
 - push_id
 - user_id
 - email
 - message_id
 - message_content
 - time
 - impact
 - geolocation
 
 ## Like history
  - _id
  - user_id
  - email
  - message_id
