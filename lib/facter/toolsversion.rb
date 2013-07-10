require 'facter'

Facter.add(:vmwaretools_tools_version) do
  confine :virtual => :vmware
  confine :vmware_patchlevel => :unknown
  setcode do
    Facter.value('vmware')
  end
end
Facter.add(:vmwaretools_tools_version) do
  confine :virtual => :vmware
  confine :vmware => 'vmware-linux'
  setcode do
    'latest'
  end
end
Facter.add(:vmwaretools_tools_version) do
  confine :virtual => :vmware
  setcode do
    Facter.value('vmware') + Facter.value('vmware_patchlevel')
  end
end

#  vim: set ts=2 sw=2 tw=0 et:
