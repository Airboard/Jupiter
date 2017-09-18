# Restful API structure for Airboard
This document outlines the Restful APIs for Airboard used by the endpoint users. This doesn't include internal users (e.g. Admins).

## 1. /users
The "users" mean accounts, it contains all kinds of private information and it's critical to make it secure. Don't misunderstand it as profile, they are different resources with different access level. By default, an endpoint user only has access to his own account, so "/users/me" is always used together.

### GET /users/me
This by default should return all text-based information (JSON) for the current endpoint user (e.g. username, message list, language preference, profile ID). A single resource can be requested through more specific URLs, as shown in the examples.
- **HTTP Method**:  GET
- **Payload**:      N/A
- **Version**:      v1.0 and later
- **Security**:     Authentication required, details TBD.
- **Sample Request**:
```
GET https://{domain-url}/{version}/users/me
GET https://{domain-url}/{version}/users/me/username
GET https://{domain-url}/{version}/users/me/profileid
```

### POST /users/me
This should create a new user account, the payload may include username, preferences etc.
- **HTTP Method**:  POST
- **Payload**:      all necessary information for account creation
- **Version**:      v1.0 and later
- **Security**:     Public accessible, but need protection against DDOS, possible ways are email verification, anti-bot verification.
- **Sample Request**:
```
POST https://{domain-url}/{version}/users/me
#Post payload#
{
    "username": "john1234",
    "email_address": "abc@def.com",
    "language": "en"
    ...
}
```

## 2. /profiles

### GET /profiles/{profileid}
This should return the public profile of the user specified, this request can be made by anyone, but certain restriction needs to be implemented. For example, we don't want the user to be able to enumerate large number of random profiles, we also don't want user to search people far away, which will destroy the idea of location-based socialization.
- **HTTP Method**:  GET
- **Payload**:      N/A
- **Version**:      v1.0 and later
- **Security**:     Public accessible, but need location restrictions and protection against DDOS attack.
```
GET https://{domain-url}/{version}/users/profiles/1234567890123456
```

### POST /profiles/{profileid}
This is used to create a user's profile. Upon account creation, each user will be assigned a profileid. The user will be able to update his own profile using this profileid. Profile is what shown to the public. For example, user's nickname, self description etc, profile picture etc.
- **HTTP Method**:  POST
- **Payload**:      user's profile information
- **Version**:      v1.0 and later
- **Security**:     need authentication, a user should only be allowed to update his own profile.
- **Side Note**:    Special attentions needed for profile image upload.

```
POST https://{domain-url}/{version}/users/profiles/1234567890123456
#Post payload#
{
    "nickname": "Bojack Horseman",
    "bio": "I like to travel",
    ...
}
```
