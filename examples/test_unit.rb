require "bundler/setup"
require "test/unit"
require "snapshot_testing/test_unit"

class ExampleTest < Test::Unit::TestCase
  include SnapshotTesting::TestUnit

  def test_snapshot
    assert_snapshot "hello"
    assert_snapshot "goodbye"
  end
end
