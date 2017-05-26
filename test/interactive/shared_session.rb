require_relative 'interactive_init'


projection_class = EntityStore::Controls::Projection::Example
reader_class = MessageStore::EventStore::Read
snapshot_class = EntitySnapshot::EventStore
snapshot_interval = 1
category = 'example'
entity_class = EntityStore::Controls::Entity::Example

store_class = Class.new do
  include ::EntityStore

  category category
  entity entity_class
  projection projection_class
  reader reader_class
  snapshot snapshot_class, snapshot_interval
end

session = MessageStore::EventStore::Session.build
store = store_class.build(session: session)

store.get(SecureRandom.hex)
store.get(SecureRandom.hex)
store.get(SecureRandom.hex)
