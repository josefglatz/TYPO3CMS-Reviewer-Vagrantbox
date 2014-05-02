#
# Cookbook Name:: environment
# Recipe:: mailcatcher
#
# Copyright 2014, Josef Florian Glatz <jousch@gmail.com>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Enabling MailCatcher autostart
template "/etc/init/mailcatcher.conf" do
	source "mailcatcher.upstart.conf.erb"
	mode 0644
	backup false
	notifies :restart, "service[mailcatcher]", :immediately
end

service "mailcatcher" do
	provider Chef::Provider::Service::Upstart
	supports :restart => true
	action :start
end