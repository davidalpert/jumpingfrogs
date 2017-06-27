# # encoding: utf-8

# Inspec test for recipe jumpingfrogs::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root') do
    it { should exist }
  end
end

# This is an example test, replace it with your own test.
describe port(80) do
  it { should_not be_listening }
end

filepath = 'c:\users\vagrant\desktop\foo.txt' if os.windows?
filepath = '/home/vagrant/foo.txt' unless os.windows?

describe file(filepath) do
  it { should exist }
  its('content') { should match ('bar') }
end
