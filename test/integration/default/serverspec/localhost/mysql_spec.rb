require 'spec_helper'

describe package('mysql-server-5.5') do
  it { should be_installed }
end

describe file('/etc/mysql/my.cnf') do
  it { should be_file }
#  it { should contain('utf8').after(/^default-character-set/) }
end

describe service('mysql') do
  it { should be_enabled }
  it { should be_running }
end
