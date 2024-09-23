package access

import data.users

default allow = false

allow {
    input.user = user
    user_roles = users[user].roles
    "admin" in user_roles
}

allow {
    input.user = user
    user_roles = users[user].roles
    "employee" in user_roles
    input.action = "read"
}

allow {
    input.user = user
    user_roles = users[user].roles
    "guest" in user_roles
    input.action = "read"
}
