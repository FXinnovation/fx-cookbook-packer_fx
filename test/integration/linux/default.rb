#
# Inspec test for adjoin_fx on debian platform family
#
# the Inspec refetence, with examples and extensive documentation, can be
# found at https://inspec.io/docker/reference/resources/
#
control "packer_fx - #{os.name} #{os.release} - 01" do
  title 'Ensure packer is installed'
  describe file('/opt/packer') do
    it { should exist }
    its('group') { should eq 'root' }
    its('owner') { should eq 'root' }
    its('mode')  { should cmp '0755' }
    its('type')  { should eq :directory }
  end

  describe file('/opt/packer/packer') do
    it { should exist }
    its('group') { should eq 'root' }
    its('owner') { should eq 'root' }
    its('mode')  { should cmp '0755' }
    its('type')  { should eq :file }
  end

  describe command('/opt/packer/packer --version') do
    its('exit_status') { should eq 0 }
  end
end

control "packer_fx - #{os.name} #{os.release} - 02" do
  title 'Ensure packer has symlink set'
  describe file('/usr/local/bin/packer') do
    it          { should exist }
    its('type') { should cmp 'file' }
  end
end
