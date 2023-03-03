//
// SFMuseruserIdAPI.swift
//


import Foundation
import Alamofire


open class SFMuseruserIdAPI {
    /**
     Get a user by userId.

     - parameter userId: (path) the user&#x27;s userId 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func resourceUserUserIdGetUserGET(userId: String, completion: @escaping ((_ data: JsonUser?,_ error: Error?) -> Void)) {
        resourceUserUserIdGetUserGETWithRequestBuilder(userId: userId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get a user by userId.
     - GET /1.0/user/{userId}

     - examples: [{contentType=application/json, example={
  "userId" : "...",
  "fullname" : "...",
  "lastFm" : "...",
  "mySpace" : "...",
  "twitter" : "...",
  "flickr" : "...",
  "website" : "...",
  "about" : "...",
  "url" : "..."
}}]
     - parameter userId: (path) the user&#x27;s userId 

     - returns: RequestBuilder<JsonUser> 
     */
    open class func resourceUserUserIdGetUserGETWithRequestBuilder(userId: String) -> RequestBuilder<JsonUser> {
        var path = "/1.0/user/{userId}"
        let userIdPreEscape = "\(userId)"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let URLString = DRLSetlistFM.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<JsonUser>.Type = DRLSetlistFM.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
}
