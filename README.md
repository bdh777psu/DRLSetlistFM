# DRLSetlistFM

[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fbdh777psu%2FDRLSetlistFM%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/bdh777psu/DRLSetlistFM)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fbdh777psu%2FDRLSetlistFM%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/bdh777psu/DRLSetlistFM)

A Setlist.fm API Swift Package

## Description
This setlist.fm API Swift Package has been designed to give you easy access to setlist data in order to build fancy applications. This service provides methods to get both setlists and components of setlists such as artists, cities, countries or venues.


## Requirements
... Understand how setlist.fm works (the [FAQ](https://www.setlist.fm/faq) and [Guidelines](https://www.setlist.fm/guidelines) are good starting points),
... read this documentation carefully and
... [apply for an API key](https://www.setlist.fm/settings/api) (link for logged in users only) - if you're not a registered user yet, then [register first](https://www.setlist.fm/signup) (it's free).


## Internationalization
Most of the featured methods honor the 'Accept-Language' header. This header is used for localizing cities and countries. The default language is English (en), but you can provide any of the languages Spanish (es), French (fr), German (de), Portuguese (pt), Turkish (tr), Italian (it) or Polish (pl).


## API Keys
API keys must be included in the request with
the 'x-api-key' header.

## Header Example
["x-api-key":'your key here', "Accept":"application/json", "Accept-Language":"en"]

## Installation
DRLSetlistFM is available as a Swift Package. To install
it, simply add the following line to your 'Package.swift' file:

```ruby
.package(url: "https://github.com/bdh777psu/DRLSetlistFM", branch: "main"),
```

## Author
Diogo Lessa

## License
DRLSetlistFM is available under the MIT license.
