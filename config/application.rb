require File.expand_path('../boot', __FILE__)

require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"

Bundler.require(*Rails.groups)

module Skeleton
  class Application < Rails::Application
    config.time_zone = 'Brasilia'
    config.i18n.default_locale = :'pt-BR'
    config.active_record.raise_in_transactional_callbacks = true
    config.filter_parameters += [:password]
    config.assets.version = '1.0'
    config.generators do |g|
      g.helper false
      g.stylesheets false
      g.javascripts false
    end

    config.middleware.delete Rack::Lock
    config.middleware.delete Rack::ETag
    config.middleware.delete ActionDispatch::ParamsParser

    config.action_dispatch.cookies_serializer = :json
    config.session_store :cookie_store, key: '_skeleton_session'
  end
end
