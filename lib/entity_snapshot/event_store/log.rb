module EntitySnapshot
  class EventStore
    class Log < ::Log
      def tag!(tags)
        tags << :entity_snapshot_event_store
        tags << :library
        tags << :verbose
      end
    end
  end
end
