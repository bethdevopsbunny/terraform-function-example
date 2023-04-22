require "functions_framework"
require "json"
require "google_drive"


FunctionsFramework.http "test_function" do |request|
  return "it worked"
end