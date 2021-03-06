require_relative '../automated_init'

context "Put" do
  context "Wrong Entity Type" do
    entity = Object.new

    id = Controls::ID.example
    version = Controls::Version.example
    time = Controls::Time.example

    snapshot = Controls::Snapshot.example

    test "Is an error" do
      assert proc { snapshot.put(id, entity, version, time) } do
        raises_error? EntitySnapshot::EventStore::Error
      end
    end
  end
end
