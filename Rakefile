require "rake/testtask"

Rake::TestTask.new do |t|
  t.pattern = 'test/**/*_test.rb'
  t.libs << 'api'
  t.libs << 'test'
end

task default: :test
