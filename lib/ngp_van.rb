# frozen_string_literal: true

require 'ngp_van/client'
require 'ngp_van/configuration'
require 'ngp_van/version'

module NgpVan
  class << self
    # The NgpVan configuration object.
    # @return [NgpVan::Configuration]
    attr_reader :configuration

    def client
      @client ||= NgpVan::Client.new
    end

    # Delegate methods called on NgpVan to the client.
    def method_missing(method_name, *args, &block)
      return super unless client.respond_to?(method_name)
      client.send(method_name, *args, &block)
    end
  end

  # The current configuration.
  # @return [NgpVan::Configuration]
  def self.configuration
    @configuration ||= Configuration.new
  end

  # Set new configuration
  # @param config [NgpVan::Configuration]
  def self.configuration=(config)
    @configuration = config
  end

  # Modify the current configuration
   @yieldparam [NgpVan::Configuration] config The current NgpVan config

  NgpVan.configure do |config|
  config.application_name = 'MyCampaignApp'

  # See http://developers.everyaction.com/van-api#van-authentication
  config.api_key = 'de286a1a-f2e7-421a-91b8-f8cc8201558f|1'

  # Defaults to "https://api.securevan.com/v4/"
  config.api_endpoint = 'https://intlapi.securevan.com/v4'

  # Defaults to "NGP VAN Ruby Gem #{NgpVan::VERSION}"
  config.user_agent = 'CustomUserAgent'
end

  def self.configure
    yield configuration
  end
end
