require 'ganesha/version'
require 'ganesha/entities/link'
require 'ganesha/repository'
require 'ganesha/repositories/links_in_memory'
require 'ganesha/use_cases/save_link'

Repository.register :links, Ganesha::Repositories::LinksInMemory.new

module Ganesha
end
