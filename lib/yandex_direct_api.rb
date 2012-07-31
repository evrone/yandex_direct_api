module YandexDirectApi
  require 'proxy'
  require 'api_error'
  require 'curb'
  require 'json'
  require 'hash'
  require 'array'
  require 'string'

	# Url for request, default for sandbox
	mattr_accessor :ep_yandex_direct_v4
  @@ep_yandex_direct_v4 = 'https://api-sandbox.direct.yandex.ru/json-api/v4/'

	# Access token
	mattr_accessor :access_token
	@@access_token = nil

	def self.setup
		yield self
	end
end

