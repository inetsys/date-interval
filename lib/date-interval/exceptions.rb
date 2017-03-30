module DateInterval
    class DateIntervalError < StandardError
        def self.wrap(exception)
            obj = new("Wrapped(#{exception.class}): #{exception.message.inspect}")
            obj.set_backtrace exception.backtrace
            obj
        end
    end

    class ParseError < DateIntervalError; end

    class UnitError < ParseError; end
end
