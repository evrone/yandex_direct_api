#encoding: utf-8
require 'spec_helper'
require 'hash'
require 'ostruct'
require 'yadirect'

describe Hash do
  it "should return camelize keys of hash" do
    puts Yadirect::Proxy.to_hash_params(:params=>[["value1", "value2"]]).inspect
    puts Yadirect::Proxy.to_hash_params(:params=>["value1", "value2"]).inspect
    puts Yadirect::Proxy.to_hash_params(:params=>{:key_words=>["value1", "value"]}).inspect
    puts Yadirect::Proxy.to_hash_params(:params=>{:key_words=>["value1"]}).inspect
  end
end
