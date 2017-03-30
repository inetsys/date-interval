# DateInterval for Ruby ![Travis Widget]
[Travis Widget]: https://travis-ci.org/inetsys/date-interval.svg?branch=master

## Description

Provides a module to parse simple time intervals as other libraries do like
moment.js for Javascript or DateInterval for PHP

## Installation

```bash
gem install date-interval
```

## Usage

```ruby
require 'date-interval'

interval = DateInterval.parse('29 minutes')
now = DateTime.new(2017,3,28,14,38,15)
now + interval.time
# 2017-03-28 15:07:00

interval = DateInterval.parse('-3 days')
now = DateTime.new(2017,3,28,14,38,15)
now + interval.time
# 2017-03-25T14:38:15
```
