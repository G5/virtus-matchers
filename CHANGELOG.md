# v0.3.0 - 2016-08-12

- Only include matchers with RSpec specs that are tagged: `type: :virtus`

# v0.2.2

- Fix `HaveAttribute#matches?` to not skip other chained option matchers whenever the type is `Array[String]`
