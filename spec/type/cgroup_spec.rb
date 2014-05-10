require 'spec_helper'

include Specinfra::Helper::RedHat

describe cgroup('group1') do
  let(:stdout) { "1\r\n" }
  its('cpuset.cpus') { should eq 1 }
end

describe cgroup('group1') do
  let(:stdout) { "1\r\n" }
  its('cpuset.cpus') { should_not eq 0 }
end