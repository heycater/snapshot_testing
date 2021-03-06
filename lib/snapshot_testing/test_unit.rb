require "snapshot_testing"

module SnapshotTesting
  module TestUnit
    def setup
      @__snapshot_recorder__ = SnapshotTesting::Recorder.new(
        name: method_name,
        path: method(method_name).source_location.first
      )
      super
    end

    def teardown
      super
      @__snapshot_recorder__.commit
    end

    def assert_snapshot(name = nil, actual)
      if name.nil?
        assert_equal(@__snapshot_recorder__.record(actual), actual)
      else
        assert_equal(@__snapshot_recorder__.record_file(name, actual), actual)
      end
    end
  end
end
