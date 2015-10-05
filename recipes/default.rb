#
# Cookbook Name:: korben
# Recipe:: default
#
# Copyright (c) 2015 Tyler Fitch, All Rights Reserved.

include_recipe 'makemkv'

mount '/remote/nevadanas/media' do
  device '192.150.23.95:/c/media'
  fstype 'nfs'
  options 'rw'
end

include_recipe 'plexapp'

include_recipe 'tmux'
