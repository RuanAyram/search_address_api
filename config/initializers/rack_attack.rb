# frozen_string_literal: true

module Rack
  class Attack
    Rack::Attack.cache.store = ActiveSupport::Cache::MemoryStore.new

    # Allow all local traffic
    safelist('allow-localhost') do |req|
      req.ip == '127.0.0.1' || req.ip == '::1'
    end

    # Allow an IP address to make 5 requests every 5 seconds
    throttle('req/ip', limit: 5, period: 5, &:ip)

    # Throttle login attempts by email address
    # throttle("logins/email", limit: 5, period: 20.seconds) do |req|
    #  if req.path == '/users/sign_in' && req.post?
    #    req.params['email'].presence
    #  end
    # end
  end
end
