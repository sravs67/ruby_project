require 'spec_helper'

describe file('/tmp/example1.txt') do
  it { should_not exist }
end

describe file('/tmp/example2.txt') do
  it { should exist }
end

# Verify that the file /tmp/example2.txt exists
#is readable only by the current user.
#The file may or may not be writable by the current user.
#The file must not be readable by the current group or other users.

# 4 read
# 2 write
# 1 exicure

# 7  0  0 /tmp/example2.txt - all permissions applied for owner
describe file('/tmp/example2.txt') do
  it { should_not be_readable.by('group') }
  it { should_not be_readable.by('others') }
  it { should be_writable.by('owner') }
end

describe file('/tmp/example3.txt') do
  it { should exist }
end

describe file('/tmp/example3.txt') do
  it { should contain('Fizz') }
  it { should contain('Buzz') }
end
