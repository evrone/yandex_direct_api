#encoding: utf-8
require 'spec_helper'
require 'hash'
require 'ostruct'
require 'yandex_direct_api'

describe Hash do
  it "should return camelize keys of hash" do
    puts YandexDirectApi::Proxy.to_hash_params(:params=>[["value1", "value2"]]).inspect
    puts YandexDirectApi::Proxy.to_hash_params(:params=>["value1", "value2"]).inspect
    puts YandexDirectApi::Proxy.to_hash_params(:params=>{:key_words=>["value1", "value"]}).inspect
    puts YandexDirectApi::Proxy.to_hash_params(:params=>{:key_words=>["value1"]}).inspect
  end
end
