# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to
[Compatible Versioning](https://github.com/staltz/comver).

## Unreleased

* Benchmark file-embed against path_hibet

## ## [0.7] - 2020-01-14

### Added

* Add hlint check to CI.
* Add free church monad layer.
* Strip out business logic from effects

### Changed

* Rename application: `TibetCli` -> `Hibet`.
* [#44](https://github.com/willbasky/Hibet/issues/44):
  Use modern `prettyprinter` instead of `ansi-terminal`.
* [#77](https://github.com/willbasky/Hibet/issues/77):
  Swap json with toml format.

### Fixed

* Fix selecting dictionary on start. Use `-s 7 -s 16` or `-s{7,16}` now.

## [0.6] - 2019-07-27

### Added

* Benchmarked most heavy functions comparing with conduit way of them. Conduit and concurrent didn't speed them up.

### Fixed

* Dictionaries to be parsed correctly.
* Data makers to load faster.
* [#54](https://github.com/willbasky/Hibet/issues/54):
  Buttons Up and Down move throuth the input history.
* [#57](https://github.com/willbasky/Hibet/issues/57):
  Consume tibetan input.

## [0.5] - 2019-07-07

### Added

* Iteration with state holding.
* [#19](https://github.com/willbasky/Hibet/issues/19):
  Selection dictionaries by id for search.
* [#49](https://github.com/willbasky/Hibet/issues/49):
  Video how to usage.
* [#1](https://github.com/willbasky/Hibet/issues/1):
  Parser to transcibe wylie to tibetan. Not it works for 37th dictionary and for query.

### Fixed

* [#47](https://github.com/willbasky/Hibet/issues/47):
  Sorting of meta output.
* Query trailing spaces is striping now.

### Changed

* Swap attoparsec with megaparsec library

## [0.4] - 2018-11-20

### Added

* [#21](https://github.com/willbasky/Hibet/issues/21):
  Command `show` to show all titles.
* [#25](https://github.com/willbasky/Hibet/issues/25):
  Show commands:
  * Command tibet show meta to show all dictionary descriptions.
  * Command `tibet show -d NUMBER` to show a specific dictionary description.
* [#32](https://github.com/willbasky/Hibet/issues/32):
  Command `om` to show Om.
* [#38](https://github.com/willbasky/Hibet/issues/38):
  Add ordering number to json field and use it when ordering.
* [#40](https://github.com/willbasky/Hibet/issues/40):
  Command `:h` on fly to query history.

### Changed

* [#28](https://github.com/willbasky/Hibet/issues/28):
  `HashMap` holds dictinaries in memory and preloads them before a first query.
* Unused functions moved to Sandbox module.
* ByteString used instead Text (It reduced using operative memory from 327 Mb to 186 Mb).

### Fixed

* [#22](https://github.com/willbasky/Hibet/issues/22):
  Map without dublicate values created.
* [#27](https://github.com/willbasky/Hibet/issues/27):
  Access to dictionaries from wherever.
* Fix new lines in value.

## [0.3] - 2018-10-01

### Added

* [#3](https://github.com/willbasky/Hibet/issues/3):
  Cli moved to `optparse-applicative`.
* [#13](https://github.com/willbasky/Hibet/issues/13):
  Colorized output.
* Command `--version` option to show current version.
* Pretty header and footer in `--help` option.

### Changed

* [#6](https://github.com/willbasky/Hibet/issues/6):
  Looking up directly through raw dictionary files.
* Roll back to strict text

### Fixed

* [#18](https://github.com/willbasky/Hibet/issues/18):
  Fix erasing part of searched result.

## [0.2] - 2018-09-24

### Added

* [#2](https://github.com/willbasky/Hibet/issues/2):
  Looking up through all libraries.
* [#8](https://github.com/willbasky/Hibet/issues/8):
  Show values of duplicate keys.
* [#14](https://github.com/willbasky/Hibet/issues/14):
  Show dictionary name where translation is from.

### Changed

* [#5](https://github.com/willbasky/Hibet/issues/5):
  Changed text to lazy text.

## [0.1] - 2018-09-22

### Added

* Added berzin library.
* Added primitive translator.

### Fix

* [#4](https://github.com/willbasky/Hibet/issues/4):
  Fixed output delay.
* [#7](https://github.com/willbasky/Hibet/issues/7):
  Show values ascending from duplicate keys.
