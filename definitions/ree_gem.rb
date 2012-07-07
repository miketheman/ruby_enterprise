#
# Cookbook Name:: ruby_enterprise
# Recipe:: ree_gem
#
# Author:: Mike Fiedler (<miketheman@gmail.com>)
# Author:: Joshua Timberman (<joshua@opscode.com>)
#
# Copyright:: 2011-2012, Mike Fiedler
# Copyright 2009, Opscode, Inc.
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

define :ree_gem, :source => nil, :version => nil do
  gem_package params[:name] do
    gem_binary "#{node['ruby_enterprise']['install_path']}/bin/gem"
    source params[:source] if params[:source]
    version params[:version] if params[:version]
  end
end
