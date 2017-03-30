require "spec_helper"

RSpec.describe DateInterval do
    it "add 1 day" do
        now = DateTime.new(2017,3,28,14,38,15)
        interval = DateInterval.parse('1 day')
        expect(now + interval.time).to eq(DateTime.new(2017,3,29,14,38,15))
    end

    it "add 1 day in february not leap year" do
        now = DateTime.new(2017,2,28,12,10,0)
        interval = DateInterval.parse('1 day')
        expect(now + interval.time).to eq(DateTime.new(2017,3,1,12,10,0))
    end

    it "sub 1 day" do
        now = DateTime.new(2017,3,28,14,38,15)
        interval = DateInterval.parse('1 day')
        expect(now - interval.time).to eq(DateTime.new(2017,3,27,14,38,15))
    end

    it "add some days" do
        now = DateTime.new(2017,3,28,14,38,15)
        interval = DateInterval.parse('4 days')
        expect(now + interval.time).to eq(DateTime.new(2017,4,1,14,38,15))
    end

    it "sub some days" do
        now = DateTime.new(2017,3,28,14,38,15)
        interval = DateInterval.parse('4 days')
        expect(now - interval.time).to eq(DateTime.new(2017,3,24,14,38,15))
    end

    it "add some days ago" do
        now = DateTime.new(2017,3,28,14,38,15)
        interval = DateInterval.parse('-3 days')
        expect(now + interval.time).to eq(DateTime.new(2017,3,25,14,38,15))
    end

    it "add 1 hour" do
        now = DateTime.new(2017,3,28,14,38,15)
        interval = DateInterval.parse('1 hour')
        expect(now + interval.time).to eq(DateTime.new(2017,3,28,15,38,15))
    end

    it "sub 1 hour" do
        now = DateTime.new(2017,3,28,14,38,15)
        interval = DateInterval.parse('1 hour')
        expect(now - interval.time).to eq(DateTime.new(2017,3,28,13,38,15))
    end

    it "add some hours" do
        now = DateTime.new(2017,3,28,14,38,15)
        interval = DateInterval.parse('5 hours')
        expect(now + interval.time).to eq(DateTime.new(2017,3,28,19,38,15))
    end

    it "add some hours ago" do
        now = DateTime.new(2017,3,28,14,38,15)
        interval = DateInterval.parse('-7 hours')
        expect(now + interval.time).to eq(DateTime.new(2017,3,28,7,38,15))
    end

    it "sub some hours" do
        now = DateTime.new(2017,3,28,14,38,15)
        interval = DateInterval.parse('5 hours')
        expect(now - interval.time).to eq(DateTime.new(2017,3,28,9,38,15))
    end

    it "add 1 minute" do
        now = DateTime.new(2017,3,28,14,38,15)
        interval = DateInterval.parse('1 hour')
        expect(now + interval.time).to eq(DateTime.new(2017,3,28,15,38,15))
    end

    it "add some minutes" do
        now = DateTime.new(2017,3,28,14,38,15)
        interval = DateInterval.parse('29 minutes')
        expect(now + interval.time).to eq(DateTime.new(2017,3,28,15,7,15))
    end

    it "add some minutes ago" do
        now = DateTime.new(2017,3,28,14,38,15)
        interval = DateInterval.parse('-41 minutes')
        expect(now + interval.time).to eq(DateTime.new(2017,3,28,13,57,15))
    end

    it "sub some minutes" do
        now = DateTime.new(2017,3,28,14,38,15)
        interval = DateInterval.parse('51 minutes')
        expect(now - interval.time).to eq(DateTime.new(2017,3,28,13,47,15))
    end

end
