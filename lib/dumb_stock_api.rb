# frozen_string_literal: true

require 'csv', 'faraday', 'json'

require_relative "dumb_stock_api/version"

module DumbStockAPI
  class Error < StandardError; end
end
