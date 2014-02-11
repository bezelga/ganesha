require 'ganesha/version'
require 'ganesha/entities/link'
require 'ganesha/repository'
require 'ganesha/repositories/links_in_memory'
require 'ganesha/use_cases/save_link'

Repository.register :links, Ganesha::Repositories::LinksInMemory.new

module Ganesha
  class << self
    def save_link(args)
      UseCases::SaveLink.new(args).save
    end
  end
end
