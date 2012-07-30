#encoding: utf-8
require 'spec_helper'
require 'hash'
require 'ostruct'

describe Hash do
  it "should return camelize keys of hash" do
    hash = {:name => "Таня", :last_name => "Сенникова",
            :options => {:size => 3, :smlie => {:form_face => "Cool"}}}
    camelized_hash = hash.camelize_keys
    puts camelized_hash
  end

  it "should return underscore of hash keys" do
    hash = {"Key1"=>"Value1", "BannerID"=>"Value2", "PingAPI"=>"sadrfadf", "LowCTRWarning"=>{"CTR"=>5, "Shows"=>56}}
    underscored_hash = hash.underscore_keys
    puts underscored_hash
  end

end

