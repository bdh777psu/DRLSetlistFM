//
// SFMsearchvenuesAPI.swift
//


import Foundation
import Alamofire


open class SFMsearchvenuesAPI {
    /**
     Search for venues.

     - parameter cityId: (query) the city&#x27;s geoId (optional)
     - parameter cityName: (query) name of the city where the venue is located (optional)
     - parameter country: (query) the city&#x27;s country (optional)
     - parameter name: (query) name of the venue (optional)
     - parameter p: (query) the number of the result page you&#x27;d like to have (optional, default to 1)
     - parameter state: (query) the city&#x27;s state (optional)
     - parameter stateCode: (query) the city&#x27;s state code (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func resourceSearchVenuesGetVenuesGET(cityId: String? = nil, cityName: String? = nil, country: String? = nil, name: String? = nil, p: Int? = nil, state: String? = nil, stateCode: String? = nil, completion: @escaping ((_ data: JsonVenues?,_ error: Error?) -> Void)) {
        resourceSearchVenuesGetVenuesGETWithRequestBuilder(cityId: cityId, cityName: cityName, country: country, name: name, p: p, state: state, stateCode: stateCode).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Search for venues.
     - GET /1.0/search/venues

     - examples: [{contentType=application/json, example={
  "venue" : [ {
    "city" : {
      "id" : "5357527",
      "name" : "Hollywood",
      "stateCode" : "CA",
      "state" : "California",
      "coords" : { },
      "country" : { }
    },
    "url" : "https://www.setlist.fm/venue/compaq-center-san-jose-ca-usa-6bd6ca6e.html",
    "id" : "6bd6ca6e",
    "name" : "Compaq Center"
  }, {
    "city" : {
      "id" : "...",
      "name" : "...",
      "stateCode" : "...",
      "state" : "...",
      "coords" : { },
      "country" : { }
    },
    "url" : "...",
    "id" : "...",
    "name" : "..."
  } ],
  "total" : 42,
  "page" : 1,
  "itemsPerPage" : 20
}}]
     - parameter cityId: (query) the city&#x27;s geoId (optional)
     - parameter cityName: (query) name of the city where the venue is located (optional)
     - parameter country: (query) the city&#x27;s country (optional)
     - parameter name: (query) name of the venue (optional)
     - parameter p: (query) the number of the result page you&#x27;d like to have (optional, default to 1)
     - parameter state: (query) the city&#x27;s state (optional)
     - parameter stateCode: (query) the city&#x27;s state code (optional)

     - returns: RequestBuilder<JsonVenues> 
     */
    open class func resourceSearchVenuesGetVenuesGETWithRequestBuilder(cityId: String? = nil, cityName: String? = nil, country: String? = nil, name: String? = nil, p: Int? = nil, state: String? = nil, stateCode: String? = nil) -> RequestBuilder<JsonVenues> {
        let path = "/1.0/search/venues"
        let URLString = DRLSetlistFM.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "cityId": cityId, 
                        "cityName": cityName, 
                        "country": country, 
                        "name": name, 
                        "p": p?.encodeToJSON(), 
                        "state": state, 
                        "stateCode": stateCode
        ])


        let requestBuilder: RequestBuilder<JsonVenues>.Type = DRLSetlistFM.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
}
