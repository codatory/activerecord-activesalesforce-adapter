Gem::Specification.new do |s|
  s.name = "activerecord-activesalesforce-adapter"
  s.version = "2.3.4"
  s.authors = ["Doug Chasman","Luigi Montanez","Senthil Nayagam","Justin Ball","Jesse Hallett"]
  s.date = "2009-7-14"
  s.summary = %q{ActiveSalesforce (ASF) is a Rails connection adapter that provides direct access to Salesforce.com hosted data and metadata via the ActiveRecord model layer. Objects, fields, and relationships are all auto surfaced as active record attributes and rels.  }
  s.email = "michael@astrails.com"
  s.rubyforge_project = "http://rubyforge.org/projects/activesfdc/"
  s.homepage = "http://github.com/taasaa/activerecord-activesalesforce-adapter"
  s.has_rdoc = true
  s.extra_rdoc_files = ["README"]
  s.rdoc_options = ["--main", "README"]
  s.post_install_message = %q{This version is compatible with Rails 2.3.2.}

  s.files = [
    "lib/active_record",
    "lib/active_record/connection_adapters",
    "lib/active_record/connection_adapters/relationship_definition.rb",
    "lib/active_record/connection_adapters/result_array.rb",
    "lib/active_record/connection_adapters/activesalesforce_adapter.rb",
    "lib/active_record/connection_adapters/asf_active_record.rb",
    "lib/active_record/connection_adapters/column_definition.rb",
    "lib/active_record/connection_adapters/id_resolver.rb",
    "lib/active_record/connection_adapters/sid_authentication_filter.rb",
    "lib/active_record/connection_adapters/entity_definition.rb",
    "lib/active_record/connection_adapters/activesalesforce.rb",
    "lib/active_record/connection_adapters/boxcar_command.rb",
    "lib/active_record/connection_adapters/recording_binding.rb",
    "lib/rforce.rb",
    "lib/rforce",
    "lib/rforce/binding.rb",
    "lib/rforce/method_keys.rb",
    "lib/rforce/soap_pullable.rb",
    "lib/rforce/soap_response_expat.rb",
    "lib/rforce/soap_response_hpricot.rb",
    "lib/rforce/soap_response_rexml.rb",
    "lib/rforce/version.rb",
    "test/unit",
    "test/unit/config.yml",
    "test/unit/recorded_test_case.rb",
    "test/unit/basic_test.rb",
    "test/unit/recorded_results",
    "test/unit/recorded_results/AsfUnitTestsBasicTest.test_batch_insert.recording",
    "test/unit/recorded_results/AsfUnitTestsBasicTest.test_read_all_content_columns.recording",
    "test/unit/recorded_results/AsfUnitTestsBasicTest.test_find_a_contact_by_id.recording",
    "test/unit/recorded_results/AsfUnitTestsBasicTest.test_create_a_contact.recording",
    "test/unit/recorded_results/AsfUnitTestsBasicTest.test_count_contacts.recording",
    "test/unit/recorded_results/AsfUnitTestsBasicTest.test_get_created_by_from_contact.recording",
    "test/unit/recorded_results/AsfUnitTestsBasicTest.test_use_default_rule.recording",
    "test/unit/recorded_results/AsfUnitTestsBasicTest.test_assignment_rule_id.recording",
    "test/unit/recorded_results/AsfUnitTestsBasicTest.test_client_id.recording",
    "test/unit/recorded_results/AsfUnitTestsBasicTest.test_use_update_mru.recording",
    "test/unit/recorded_results/AsfUnitTestsBasicTest.test_master_detail.recording",
    "test/unit/recorded_results/AsfUnitTestsBasicTest.test_add_notes_to_contact.recording",
    "test/unit/recorded_results/AsfUnitTestsBasicTest.test_find_addresses.recording",
    "test/unit/recorded_results/AsfUnitTestsBasicTest.test_save_a_contact.recording",
    "test/unit/recorded_results/AsfUnitTestsBasicTest.test_find_a_contact.recording",
    "test/unit/recorded_results/AsfUnitTestsBasicTest.test_find_a_contact_by_first_name.recording",
    "README"
  ]

  s.test_files = [
    "test/unit",
    "test/unit/config.yml",
    "test/unit/recorded_test_case.rb",
    "test/unit/basic_test.rb",
    "test/unit/recorded_results",
    "test/unit/recorded_results/AsfUnitTestsBasicTest.test_batch_insert.recording",
    "test/unit/recorded_results/AsfUnitTestsBasicTest.test_read_all_content_columns.recording",
    "test/unit/recorded_results/AsfUnitTestsBasicTest.test_find_a_contact_by_id.recording",
    "test/unit/recorded_results/AsfUnitTestsBasicTest.test_create_a_contact.recording",
    "test/unit/recorded_results/AsfUnitTestsBasicTest.test_count_contacts.recording",
    "test/unit/recorded_results/AsfUnitTestsBasicTest.test_get_created_by_from_contact.recording",
    "test/unit/recorded_results/AsfUnitTestsBasicTest.test_use_default_rule.recording",
    "test/unit/recorded_results/AsfUnitTestsBasicTest.test_assignment_rule_id.recording",
    "test/unit/recorded_results/AsfUnitTestsBasicTest.test_client_id.recording",
    "test/unit/recorded_results/AsfUnitTestsBasicTest.test_use_update_mru.recording",
    "test/unit/recorded_results/AsfUnitTestsBasicTest.test_master_detail.recording",
    "test/unit/recorded_results/AsfUnitTestsBasicTest.test_add_notes_to_contact.recording",
    "test/unit/recorded_results/AsfUnitTestsBasicTest.test_find_addresses.recording",
    "test/unit/recorded_results/AsfUnitTestsBasicTest.test_save_a_contact.recording",
    "test/unit/recorded_results/AsfUnitTestsBasicTest.test_find_a_contact.recording",
    "test/unit/recorded_results/AsfUnitTestsBasicTest.test_find_a_contact_by_first_name.recording",
  ]

  s.add_dependency("rails",     [">=2.0.2"])
  s.add_dependency("builder",   [">=1.2.4"])
  s.add_dependency("xmlparser", [">=0.6"])
  s.add_dependency("facets",    [">=2.4"])

end
