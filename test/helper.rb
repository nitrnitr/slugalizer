require 'bundler/setup'
require 'oktobertest'
require 'oktobertest/contrib'
require 'slugalizer'
require_relative '../lib/sugar/slugalizer_sugar.rb'

ENV['RACK_ENV'] = 'test'

module Oktobertest
  class Test
    include Slugalizer
  end
end
