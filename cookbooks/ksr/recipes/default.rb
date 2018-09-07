#
# Cookbook Name:: ksr
# Recipe:: default
#
# Copyright (c) 2018 The Authors, All Rights Reserved.

file '/tmp/chef_log1' do
	action :create
end

package 'httpd' do
	action :install
end

service 'httpd' do
	action :start
end

service 'httpd' do 
	action :enable
end

file '/tmp/chef_logs1' do
	content ' Apache package sucessfully installed, started, enabled'
end
