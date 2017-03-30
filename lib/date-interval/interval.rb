module DateInterval
    class Interval
        @@number = nil
        @@units = nil
        @@divider = nil

        def initialize(number, units)
            @@number = number
            @@units = units
            calcDivider
        end

        ## Return a Rational representing time in days
        ## Useful for DateTime + operator
        def time
            Rational(@@number, @@divider)
        end

        protected
        def calcDivider
            case @@units
            when 'day', 'days'
                @@divider = 1
            when 'hour', 'hours'
                @@divider = 24
            when 'minute', 'minutes'
                @@divider = 24*60
            when 'second', 'seconds'
                @@divider = 24*60*60
            else
                raise UnitError, "Specified units are not valid"
            end
        end
    end
end
