module EntitySnapshot
  class EventStore
    module Controls
      module Snapshot
        def self.example
          EntitySnapshot::EventStore.build(Controls::Entity::Example)
        end

        def self.subject
          Controls::Entity::Example
        end
      end
    end
  end
end
