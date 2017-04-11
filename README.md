# Virtus Matchers

[![Build Status](https://travis-ci.org/G5/virtus-matchers.svg)](https://travis-ci.org/G5/virtus-matchers)

Matchers for Virtus

Only RSpec matchers are available now. In your spec_helper.rb:

```ruby
require "virtus/matchers/rspec"
```

# Usage

```ruby
RSpec.describe Unit, type: :virtus do
  it { is_expected.to have_attribute(:name) }
  it { is_expected.to have_attribute(:location, String) }
  it { is_expected.to have_attribute(:bedrooms, Integer).with_default(1) }
end
```

The `type: :virtus` is important. The matchers are only available when the type is `:virtus`.

Due to the complexity of what values must be placed in the event that a coercer exists, it might be easier in those cases to just supply an instance:

```ruby
RSpec.describe Unit, type: :virtus do
  subject { described_class.new(name: "Gorilla Pad") }
  it { is_expected.to have_attribute(:name).strict }
  it { is_expected.to have_attribute(:location, String) }
  it { is_expected.to have_attribute(:bedrooms, Integer).with_default(1) }
end
```
