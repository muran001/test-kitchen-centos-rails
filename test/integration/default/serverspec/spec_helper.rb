require 'serverspec'

set :backend, :exec
set :path, "/sbin:/usr/local/sbin:/usr/local/rbenv/shims:$PATH"

