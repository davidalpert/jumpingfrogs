#
# Cookbook:: jumpingfrogs
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

file node['filepath'] do
  content 'bar'
end
