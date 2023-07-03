//
// SFMsearchcountriesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class SFMsearchCountriesAPI {
    /**
     Get a complete list of all supported countries.

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func sfmSearchCountriesGetCountries(completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        sfmSearchCountriesGetCountriesWithRequestBuilder().execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Get a complete list of all supported countries.
     - GET /1.0/search/countries

     - API Key:
       - type: apiKey X-API-KEY 
       - name: ApiKeyAuth
     - examples: [{contentType=application/json, example=""}]

     - returns: RequestBuilder<Void> 
     */
    open class func sfmSearchCountriesGetCountriesWithRequestBuilder() -> RequestBuilder<Void> {
        let path = "/1.0/search/countries"
        let URLString = DRLSetlistFM.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = DRLSetlistFM.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
}