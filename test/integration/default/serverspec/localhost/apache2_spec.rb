require 'spec_helper'

set :path, '/sbin:/usr/local/sbin:$PATH'

describe package('apache2') do
  it { should be_installed }
end

describe service('apache2') do
  it { should be_enabled   }
  it { should be_running   }
end

