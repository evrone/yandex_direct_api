require 'spec_helper'
require 'string'
describe String do
  it "camelcase should return string in camel case" do
    "auto_budget_priority".to_camelcase.should eq("AutoBudgetPriority")
  end

  it "camelcase with exceptions" do
    "ping_api".to_camelcase.should eq("PingAPI")
  end
end
