# frozen_string_literal: true

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.default_formatter = 'doc' if config.files_to_run.one?
  config.example_status_persistence_file_path = 'spec/examples.txt'
  config.filter_run_when_matching :focus
  config.order = :random
  config.shared_context_metadata_behavior = :apply_to_host_groups
  config.warnings = true
end

# Limits the available syntax to the non-monkey patched syntax that is
# recommended. For more details, see:
#   - http://rspec.info/blog/2012/06/rspecs-new-expectation-syntax/
#   - http://www.teaisaweso.me/blog/2013/05/27/rspecs-new-message-expectation-syntax/
#   - http://rspec.info/blog/2014/05/notable-changes-in-rspec-3/#zero-monkey-patching-mode
# config.disable_monkey_patching!

# Print the 10 slowest examples and example groups at the
# end of the spec run, to help surface which specs are running
# particularly slow.
# config.profile_examples = 10

# Seed global randomization in this process using the `--seed` CLI option.
# Setting this allows you to use `--seed` to deterministically reproduce
# test failures related to randomization by passing the same `--seed` value
# as the one that triggered the failure.
# Kernel.srand config.seed
