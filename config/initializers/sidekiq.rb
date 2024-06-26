Sidekiq.configure_server do |config|
  config.redis = { url: ENV.fetch("REDIS_URL") { "redis://localhost:6379/1" }, network_timeout: 10, pool_timeout: 10, size: 10 }
end

Sidekiq.configure_client do |config|
  config.redis = { url: ENV.fetch("REDIS_URL") { "redis://localhost:6379/1" }, network_timeout: 10, pool_timeout: 10, size: 10 }
end
