module ActiveRecord
  module Coders
    class NestedHstore
      def initialize
        @nested_serializer = ::NestedHstore::Serializer.new
      end

      def dump(obj)
        @nested_serializer.serialize(obj)
      end

      def from_hstore(hstore)
        @nested_serializer.deserialize(hstore)
      end
    end
  end
end
