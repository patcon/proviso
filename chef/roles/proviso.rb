name "proviso"
description "Master role for Proviso development environment."

run_list([
  "role[base]",
  "role[lamp]",
])

default_attributes({
})
