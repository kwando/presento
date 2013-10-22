module Presento
  require 'delegate'
  class Base < SimpleDelegator
    def class
      model.class
    end

    def to_model
      model
    end

    class << self
      def wrap_all collection
        collection.each do |object|
          presenter = self.new(object)
          yield(presenter)
        end
      end
      alias :present_each :wrap_all

      # present the given object and optionally yield it
      def present object
        if block_given?
          yield(self.new(object))
        else
          self.new(object)
        end
      end
    end

    protected
    def model
      __getobj__
    end
  end
end