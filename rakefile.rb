require 'rake/testtask'

task :default => [:test]

Rake::TestTask.new do |t|
    t.libs = ["lib"]
    t.warning = true
    t.verbose = true
    t.test_files = FileList['*/*test*.rb']
end
