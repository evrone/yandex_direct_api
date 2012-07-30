module Yadirect
  class ApiError < RuntimeError
    attr_reader :error_detail, :error_str, :error_code

    def initialize(hash)
      @error_detail = hash["error_detail"]
      @error_str = hash["error_str"]
      @error_code = hash["error_code"]
    end

    def to_s
      "@error_detail=\"#{@error_detail}\", @error_str=\"#{@error_str}\", @error_code=\"#{@error_code}\""
    end

  end
end
