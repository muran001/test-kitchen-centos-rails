require 'spec_helper'

describe package('mysql-server') do
  it { should be_installed }
end

describe file('/etc/my.cnf') do
  it { should be_file }
end

describe service('mysql') do
  it { should be_running }
end
