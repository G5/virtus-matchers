# Change Log
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project adheres to [Semantic Versioning](http://semver.org/).

## [0.4.0] - 2017-04-11
### Added
- Accept subjects that are instances of the class being tested

### Changed
- Must explicitly require `virtus/matchers/rspec` for RSpec integration

## [0.3.0] - 2016-08-12
### Added
- Only include matchers with RSpec specs that are tagged: `type: :virtus`

## [0.2.2]
### Fixed
- Fix `HaveAttribute#matches?` to not skip other chained option matchers whenever the type is `Array[String]`
