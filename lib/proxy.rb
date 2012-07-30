module YandexDirectApi
	require 'net/http'
  class Proxy
    EP_YANDEX_DIRECT_V4 = 'https://api-sandbox.direct.yandex.ru/json-api/v4/'
		ACCESS_TOKEN = "b2f334cbbc36432e8f7e435736b1a9ea"
    attr_accessor :debug, :locale

    def initialize params
      @params = params
      @locale = 'RU' || params[:locale]
      @debug = false || params[:debug]
			@application_id = params[:application_id]
			@token = ACCESS_TOKEN
    end

    def invoke method, args

      args = case args
        when Hash then args.camelize_keys
        when Array then args.camelize_each
        else args
      end
      json_object = JSON.generate({:method => method, :locale => @locale, :login => "devandart", :application_id => @application_id, :token => @token, :param => args})
      puts "yadirect input: #{json_object}" if @debug
			uri = URI(EP_YANDEX_DIRECT_V4)

			c = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https', :verify_mode => OpenSSL::SSL::VERIFY_NONE) do |http|
		  	req = Net::HTTP::Post.new uri.request_uri
				req.content_type = 'application/json'
        req.body = json_object
			  response = http.request(req) # Net::HTTPResponse object
			end

#			puts "body_str = #{c.body}"
      hash =  JSON.parse(c.body)
      puts "yadirect output: #{hash}" if @debug

      if (hash.include?("error_code"))
        raise YandexDirectApi::ApiError, hash
      else
        hash["data"]
      end
    end

    def method_missing(name, args, &block)
	    ya_params = (args.class == Fixnum) ? args : to_hash_params(args)
      object = invoke(name.to_s.to_camelcase, ya_params)
    end

    def to_hash_params *args
      return {} if args.empty?
      return args.first.camelize_keys
    end
  end
end
