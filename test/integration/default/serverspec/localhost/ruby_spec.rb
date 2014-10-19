require 'spec_helper'

describe command('ruby -v') do
  its(:stdout) { should match /ruby 2\.1\.3.+/ }
end

describe package('bundler') do
  it { should be_installed.by('gem') }
end

describe package('rbenv-rehash') do
  it { should be_installed.by('gem') }
end

describe package('rails') do
  it { should be_installed.by('gem') }
end

