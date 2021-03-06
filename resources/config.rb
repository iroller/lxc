actions :create, :delete
default_action :create

attribute :container, :kind_of => String, :default => nil # alias for utsname
attribute :utsname, :kind_of => String, :default => nil # defaults to resource name
attribute :aa_profile, :kind_of => String, :default => nil # platform specific?
attribute :network, :kind_of => [Array, Hash]
attribute :default_bridge, :kind_of => String
attribute :static_ip, :kind_of => String
attribute :pts, :kind_of => Numeric, :default => 1024
attribute :tty, :kind_of => Numeric, :default => 4
attribute :arch, :kind_of => String, :default => 'amd64'
attribute :devttydir, :kind_of => String, :default => 'lxc'
attribute :cgroup, :kind_of => Hash, :default => Mash.new
attribute :cap_drop, :kind_of => [String, Array], :default => %w(sys_module mac_admin)
attribute :mount, :kind_of => String
attribute :mount_entry, :kind_of => String
attribute :rootfs, :kind_of => [String,Pathname]
attribute :rootfs_mount, :kind_of => String
attribute :pivotdir, :kind_of => String

if node[:platform_version] == '14.04'
  attribute :start_auto, :kind_of => Numeric, :default => 1
  attribute :start_delay, :kind_of => Numeric, :default => 5
  attribute :mount_auto, :kind_of => String, :default => nil
end
