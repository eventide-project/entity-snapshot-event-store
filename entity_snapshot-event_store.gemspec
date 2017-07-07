# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name = 'evt-entity_snapshot-event_store'
  s.version = '0.1.1.0'
  s.summary = 'Projected entity snapshotting for EventStore'
  s.description = ' '

  s.authors = ['The Eventide Project']
  s.email = 'opensource@eventide-project.org'
  s.homepage = 'https://github.com/eventide-project/entity-snapshot-event-store'
  s.licenses = ['MIT']

  s.require_paths = ['lib']
  s.files = Dir.glob('{lib}/**/*')
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 2.4.0'

  s.add_runtime_dependency 'evt-entity_store'
  s.add_runtime_dependency 'evt-messaging-event_store'

  s.add_development_dependency 'test_bench'
end
