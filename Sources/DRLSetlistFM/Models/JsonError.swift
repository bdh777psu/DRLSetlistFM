//
// JsonError.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Returned in case of an error. */

public struct JsonError: Codable {

    /** the HTTP status code */
    public var code: Decimal?
    /** the HTTP status message */
    public var status: String?
    /** an additional error message */
    public var message: String?
    /** current timestamp */
    public var timestamp: String?

    public init(code: Decimal? = nil, status: String? = nil, message: String? = nil, timestamp: String? = nil) {
        self.code = code
        self.status = status
        self.message = message
        self.timestamp = timestamp
    }


}
