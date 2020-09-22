require 'net/http'
require 'ns1'

module RecordStore
  class Provider::NS1 < Provider
    class Client < ::NS1::Client
      def initialize(api_key:)
        super(api_key)
      end

      def zones
        zones = super
        raise_error(zones) if zones.is_a?(NS1::Response::Error)
        zones
      end

      def zone(name)
        zone = super(name)
        raise_error(zone) if zone.is_a?(NS1::Response::Error)
        zone
      end

      def record(zone:, fqdn:, type:, must_exist: false)
        result = super(zone, fqdn, type)
        if result.is_a?(NS1::Response::Error)
          raise_error(result) if must_exist
          return nil
        end
        result
      end

      def create_record(zone:, fqdn:, type:, params:)
        result = super(zone, fqdn, type, params)
        raise_error(result) if result.is_a?(NS1::Response::Error)
        nil
      end

      def modify_record(zone:, fqdn:, type:, params:)
        result = super(zone, fqdn, type, params)
        raise_error(result) if result.is_a?(NS1::Response::Error)
        nil
      end

      def delete_record(zone:, fqdn:, type:)
        result = super(zone, fqdn, type)
        raise_error(result) if result.is_a?(NS1::Response::Error)
        nil
      end

      private

      def raise_error(result)
        if result.is_a?(NS1::Response::UnparsableBodyError)
          raise RecordStore::Provider::UnparseableBodyError, result.to_s
        end
        raise RecordStore::Provider::Error, result.to_s
      end
    end
  end
end
