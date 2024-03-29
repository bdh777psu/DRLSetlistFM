//
// SFMsearchvenuesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class SFMsearchVenuesAPI {
    /**
     Search for venues.

     - parameter cityId: (query) the city&#x27;s geoId (optional)
     - parameter cityName: (query) name of the city where the venue is located (optional)
     - parameter country: (query) the city&#x27;s country (optional)
     - parameter name: (query) name of the venue (optional)
     - parameter p: (query) the number of the result page you&#x27;d like to have (optional)
     - parameter state: (query) the city&#x27;s state (optional)
     - parameter stateCode: (query) the city&#x27;s state code (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func sfmSearchVenuesGetVenues(cityId: String? = nil, cityName: String? = nil, country: String? = nil, name: String? = nil, p: Int? = nil, state: String? = nil, stateCode: String? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        sfmSearchVenuesGetVenuesWithRequestBuilder(cityId: cityId, cityName: cityName, country: country, name: name, p: p, state: state, stateCode: stateCode).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Search for venues.
     - GET /1.0/search/venues

     - API Key:
       - type: apiKey X-API-KEY 
       - name: ApiKeyAuth
     - examples: [{contentType=application/json, example=""}]
     - parameter cityId: (query) the city&#x27;s geoId (optional)
     - parameter cityName: (query) name of the city where the venue is located (optional)
     - parameter country: (query) the city&#x27;s country (optional)
     - parameter name: (query) name of the venue (optional)
     - parameter p: (query) the number of the result page you&#x27;d like to have (optional)
     - parameter state: (query) the city&#x27;s state (optional)
     - parameter stateCode: (query) the city&#x27;s state code (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func sfmSearchVenuesGetVenuesWithRequestBuilder(cityId: String? = nil, cityName: String? = nil, country: String? = nil, name: String? = nil, p: Int? = nil, state: String? = nil, stateCode: String? = nil) -> RequestBuilder<Void> {
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


        let requestBuilder: RequestBuilder<Void>.Type = DRLSetlistFM.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
}
