begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "activerecord-activesalesforce-adapter"
    gemspec.summary = "ActiveSalesforce (ASF) is a Rails connection adapter that provides direct access to Salesforce.com hosted data and metadata via the ActiveRecord model layer. Objects, fields, and relationships are all auto surfaced as active record attributes and rels."
    gemspec.email = "jr@trms.com"
    gemspec.homepage = "http://github.com/johnreilly/activerecord-activesalesforce-adapter"
    gemspec.authors = ["Doug Chasman","Luigi Montanez","Senthil Nayagam","Justin Ball","Jesse Hallett"]
    
    gemspec.test_files = 'test/**/*'
    
    gemspec.add_dependency('rails', '>= 2.3.3')
    gemspec.add_dependency('builder', '>= 1.2.4')
    gemspec.add_dependency('xmlparser', '>= 0.6')
    gemspec.add_dependency('facets', '>= 2.4')
    
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end