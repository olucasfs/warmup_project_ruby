require "httparty"
require "pry"
# require "cucumber"

$env = YAML.load_file('./features/support/config/environment.yml')[ENV['ENV']]