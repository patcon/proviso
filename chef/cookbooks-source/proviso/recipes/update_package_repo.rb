case node['platform_family']
when "debian"
  include_recipe "apt"
when "rhel"
  include_recipe "yum::epel"

  # Often run out of mirrors with this package,
  # so allow a few retries.
  package "gnupg2" do
    retries 5
  end
end
