require "httparty"
require "pry"
require_relative "cli_project/version"
require_relative 'cli_project/region'
require_relative 'cli_project/cli'
require_relative 'cli_project/api'

module CliProject
  class Error < StandardError; end
  # Your code goes here...
end
