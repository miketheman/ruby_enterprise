# ruby_enterprise [![Build Status](https://secure.travis-ci.org/miketheman/ruby_enterprise.png?branch=master)](http://travis-ci.org/miketheman/ruby_enterprise)

Description
===========

Installs Ruby Enterprise Edition (REE) from Phusion.

Requirements
============

## Cookbooks:
* `build-essential` - get a compiler and associated files

Attributes
==========

* `node['ruby_enterprise']['install_path']` - Location to install REE. Default /opt/ruby-enterprise
* `node['ruby_enterprise']['version']` - Version to install. Looks like `1.8.7-2012.02`
* `node['ruby_enterprise']['url']` - URL to download. Default is from GoogleCode, with the version specified

Usage
=====
Include the ruby_enterprise recipe to install REE.

    include_recipe "ruby_enterprise"

Or add it to your role, or directly to a node's recipes.

Install RubyGems under REE with the ree_gem definition.

    ree_gem "rails" do
      source "http://gems.rubyforge.org"
      version "2.3.4"
    end

The definition supports parameters for source and version, though they are optional.

Note
====
Ruby Enterprise Edition is being dropped sometime in the future.
A [post from Phusion][1] explains the reason for dropping the support, and will eventually kill it off entirely.
Until then, this will continue to serve as a working cookbook for REE.

[1]: http://blog.phusion.nl/2012/02/21/ruby-enterprise-edition-1-8-7-2012-02-released-end-of-life-imminent/

License and Authors
===================

Author:: Mike Fiedler (<miketheman@gmail.com>)
Author:: Joshua Timberman (<joshua@opscode.com>)
Author:: Sean Cribbs (<seancribbs@gmail.com>)
Author:: Michael Hale (<mikehale@gmail.com>)

Copyright:: 2011-2012, Mike Fiedler
Copyright:: 2009-2010, Opscode, Inc.
Copyright:: 2009, Sean Cribbs
Copyright:: 2009, Michael Hale

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

