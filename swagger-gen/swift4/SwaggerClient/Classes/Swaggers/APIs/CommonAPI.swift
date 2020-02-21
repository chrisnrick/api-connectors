//
// CommonAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class CommonAPI {
    /**
     Get bybit server time.
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func commonGet(completion: @escaping ((_ data: Any?,_ error: Error?) -> Void)) {
        commonGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get bybit server time.
     - GET /v2/public/time
     - examples: [{contentType=application/json, example=""}]

     - returns: RequestBuilder<Any> 
     */
    open class func commonGetWithRequestBuilder() -> RequestBuilder<Any> {
        let path = "/v2/public/time"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Any>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}