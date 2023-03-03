//
// SFMsearchcountriesAPI.swift
//


import Foundation
import Alamofire


open class SFMsearchcountriesAPI {
    /**
     Get a complete list of all supported countries.

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func resourceSearchCountriesGetCountriesGET(completion: @escaping ((_ data: JsonCountries?,_ error: Error?) -> Void)) {
        resourceSearchCountriesGetCountriesGETWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get a complete list of all supported countries.
     - GET /1.0/search/countries

     - examples: [{contentType=application/json, example={
  "country" : [ {
    "code" : "US",
    "name" : "United States"
  }, {
    "code" : "...",
    "name" : "..."
  } ],
  "total" : 42,
  "page" : 1,
  "itemsPerPage" : 20
}}]

     - returns: RequestBuilder<JsonCountries> 
     */
    open class func resourceSearchCountriesGetCountriesGETWithRequestBuilder() -> RequestBuilder<JsonCountries> {
        let path = "/1.0/search/countries"
        let URLString = DRLSetlistFM.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<JsonCountries>.Type = DRLSetlistFM.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
}
