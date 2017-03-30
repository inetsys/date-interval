require "spec_helper"

RSpec.describe DateInterval do
    it "has a version number" do
        expect(DateInterval::VERSION).not_to be nil
    end

    it "create new interval" do
        expect(DateInterval.parse('1 days')).not_to be nil
    end

    it "wrong period type" do
        expect{ DateInterval.parse(nil) }.to raise_error DateInterval::ParseError
    end

    it "wrong units" do
        expect{ DateInterval.parse('1 unknown') }.to raise_error DateInterval::UnitError
    end

    it "period 1 day" do
        interval = DateInterval.parse('1 day')
        expect(interval.time).to eq(Rational(1,1))
    end

    it "period -1 day" do
        interval = DateInterval.parse('-1 day')
        expect(interval.time).to eq(Rational(-1,1))
    end

    it "period some days" do
        interval = DateInterval.parse('4 days')
        expect(interval.time).to eq(Rational(4,1))
    end

    it "period some days ago" do
        interval = DateInterval.parse('-3 days')
        expect(interval.time).to eq(Rational(-3,1))
    end

    it "period 1 hour" do
        interval = DateInterval.parse('1 hour')
        expect(interval.time).to eq(Rational(1,24))
    end

    it "period some hours" do
        interval = DateInterval.parse('7 hours')
        expect(interval.time).to eq(Rational(7,24))
    end

    it "period 1 minute" do
        interval = DateInterval.parse('1 minute')
        expect(interval.time).to eq(Rational(1,1440))
    end

    it "period some minutes" do
        interval = DateInterval.parse('13 minutes')
        expect(interval.time).to eq(Rational(13,1440))
    end
end
