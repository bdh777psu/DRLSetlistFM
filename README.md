# DRLSetlistFM
[![Build Status](https://app.bitrise.io/app/a0901c4f-20f7-4da9-9eee-765eb2bd0e03/status.svg?token=xYcYNaII0H0jmcJ2Jnz-jg&branch=main)](https://app.bitrise.io/app/a0901c4f-20f7-4da9-9eee-765eb2bd0e03)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fbdh777psu%2FDRLSetlistFM%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/bdh777psu/DRLSetlistFM)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fbdh777psu%2FDRLSetlistFM%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/bdh777psu/DRLSetlistFM)


A Setlist.fm API Swift Package (Swagger-spec generated edition)


## Description
This setlist.fm API Swift Package has been designed to give you easy access to setlist data in order to build fancy applications. This service provides methods to get both setlists and components of setlists such as artists, cities, countries or venues.

This is the Swagger-spec generated Swift code edition. For the alternative, go to the Apple swift-openapi-generator edition [SwiftSetlistFM](https://github.com/bdh777psu/SwiftSetlistFM) Swift Package.


## Requirements
... Understand how setlist.fm works (the [FAQ](https://www.setlist.fm/faq) and [Guidelines](https://www.setlist.fm/guidelines) are good starting points),
... read this documentation carefully and
... [apply for an API key](https://www.setlist.fm/settings/api) (link for logged in users only) - if you're not a registered user yet, then [register first](https://www.setlist.fm/signup) (it's free).


## Internationalization
Most of the featured methods honor the 'Accept-Language' header. This header is used for localizing cities and countries. The default language is English (en), but you can provide any of the languages Spanish (es), French (fr), German (de), Portuguese (pt), Turkish (tr), Italian (it) or Polish (pl).


## Installation
DRLSetlistFM is available as a Swift Package. To install
it, simply add the following line to your 'Package.swift' file:

```ruby
.package(url: "https://github.com/bdh777psu/DRLSetlistFM", branch: "main"),
```

## API Keys
API keys must be included in the request with
the 'x-api-key' header.


## Header Example
```ruby
DRLSetlistFM.customHeaders = ["Accept": "application/json", "Accept-Language": "en", "x-api-key": "'yourkeyhere'"]
```

## Usage Example
```ruby
import DRLSetlistFM

SFMsearchSetlistsAPI.sfmSearchSetlistsGetSetlists(artistName: "The Beatles") { data, error in
    if error != nil {
        print(error.debugDescription)
    } else {
        if let safeData = data {
            print(safeData)
        }
    }
}
```

## Author
Diogo Lessa

## License
DRLSetlistFM is available under the MIT license.
