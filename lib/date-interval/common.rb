module DateInterval
    module_function

    def parse(period)
        unless period.kind_of?(String)
            raise ParseError, "Period is not a string"
        end

        match = /^(-?[0-9]+)\s+([a-z]+)$/.match(period.strip.downcase)
        if match.nil? || match.length != 3
            raise ParseError, "Not a valid period"
        else
            number = match[1].to_i
            units = match[2]
            DateInterval::Interval.new(number, units)
        end
    end
end
