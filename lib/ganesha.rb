require 'ganesha/version'
require 'ganesha/entities/link'
require 'ganesha/repository'
require 'ganesha/repositories/links_in_memory'
require 'ganesha/use_cases/save_link'
require 'ganesha/use_cases/current_links'
require 'ganesha/use_cases/links_between'
#Dir[File.dirname(__FILE__) + "/ganesha/use_cases/**/*.rb"].each { |file| require file }

Repository.register :links, Ganesha::Repositories::LinksInMemory.new

module Ganesha
  class << self
    def save_link(args)
      UseCases::SaveLink.new(args).save
    end

    def links_between(args)
      UseCases::LinksBetween.new(args).links
    end
  end
end
