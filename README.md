# GemPath

[![Build Status](https://travis-ci.org/JuanitoFatas/gem_path.svg?branch=master)](https://travis-ci.org/JuanitoFatas/gem_path)

Find where a gem is located.

## Installation

Add this line to your application's Gemfile then run `bundle`:

```ruby
gem "gem_path"
```

Or install it yourself as:

```
$ gem install gem_path
```

## Usage

```ruby
GemPath.find("rails")
# => path/to/rails/gem/in/your/system
```

## License, Contributor's Guidelines

- MIT license
- [Moya Contributors Guidelines][moya] which TLDR: means we give out push access easily and often.

[mit]: https://opensource.org/licenses/MIT
[moya]: https://github.com/Moya/contributors
