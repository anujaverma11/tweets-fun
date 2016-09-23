Rails.application.configure do  config.cache_classes = false
  config.assets.initialize_on_precompile = false
  config.eager_load = false
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false
  config.action_mailer.raise_delivery_errors = false
  config.active_support.deprecation = :log
  config.active_record.migration_error = :page_load
  config.assets.debug = true
  config.assets.digest = true
  config.assets.raise_runtime_errors = true
  config.twitter_key = ENV['TWITTER_CONSUMER_KEY']
  config.twitter_secret = ENV['TWITTER_CONSUMER_SECRET']
end
