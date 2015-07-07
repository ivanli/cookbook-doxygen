#
# Cookbook Name:: doxygen
# Recipe:: default
#
# Copyright 2015, Ivan Li
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'windows'

windows_zipfile node['doxygen']['out_path'] do
  source node['doxygen']['zip_path']
  action :unzip
  not_if {::Dir.exists? node['doxygen']['out_path']}
end

windows_path node['doxygen']['out_path'].gsub('/','\\') do
  action :add
end