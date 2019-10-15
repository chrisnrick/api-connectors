//
// OrderAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class OrderAPI {
    /**
     Get my active order list.
     
     - parameter orderId: (query) Order ID 
     - parameter symbol: (query) Contract type. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func orderCancel(orderId: String, symbol: String? = nil, completion: @escaping ((_ data: Any?,_ error: Error?) -> Void)) {
        orderCancelWithRequestBuilder(orderId: orderId, symbol: symbol).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get my active order list.
     - POST /open-api/order/cancel
     - API Key:
       - type: apiKey api_key (QUERY)
       - name: apiKey
     - API Key:
       - type: apiKey sign (QUERY)
       - name: apiSignature
     - API Key:
       - type: apiKey timestamp (QUERY)
       - name: timestamp
     - examples: [{contentType=application/json, example=""}]
     
     - parameter orderId: (query) Order ID 
     - parameter symbol: (query) Contract type. (optional)

     - returns: RequestBuilder<Any> 
     */
    open class func orderCancelWithRequestBuilder(orderId: String, symbol: String? = nil) -> RequestBuilder<Any> {
        let path = "/open-api/order/cancel"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "order_id": orderId, 
            "symbol": symbol
        ])

        let requestBuilder: RequestBuilder<Any>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get my active order list.
     
     - parameter orderId: (query) Order ID (optional)
     - parameter orderLinkId: (query) Customized order ID. (optional)
     - parameter symbol: (query) Contract type. Default BTCUSD (optional)
     - parameter order: (query) Sort orders by creation date (optional)
     - parameter page: (query) Page. Default getting first page data (optional)
     - parameter limit: (query) TLimit for data size per page, max size is 50. Default as showing 20 pieces of data per page (optional)
     - parameter orderStatus: (query) Query your orders for all statuses if &#39;order_status&#39; is empty. If you want to query orders with specific statuses , you can pass the order_status split by (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func orderGetOrders(orderId: String? = nil, orderLinkId: String? = nil, symbol: String? = nil, order: String? = nil, page: Double? = nil, limit: Double? = nil, orderStatus: String? = nil, completion: @escaping ((_ data: Any?,_ error: Error?) -> Void)) {
        orderGetOrdersWithRequestBuilder(orderId: orderId, orderLinkId: orderLinkId, symbol: symbol, order: order, page: page, limit: limit, orderStatus: orderStatus).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get my active order list.
     - GET /open-api/order/list
     - API Key:
       - type: apiKey api_key (QUERY)
       - name: apiKey
     - API Key:
       - type: apiKey sign (QUERY)
       - name: apiSignature
     - API Key:
       - type: apiKey timestamp (QUERY)
       - name: timestamp
     - examples: [{contentType=application/json, example=""}]
     
     - parameter orderId: (query) Order ID (optional)
     - parameter orderLinkId: (query) Customized order ID. (optional)
     - parameter symbol: (query) Contract type. Default BTCUSD (optional)
     - parameter order: (query) Sort orders by creation date (optional)
     - parameter page: (query) Page. Default getting first page data (optional)
     - parameter limit: (query) TLimit for data size per page, max size is 50. Default as showing 20 pieces of data per page (optional)
     - parameter orderStatus: (query) Query your orders for all statuses if &#39;order_status&#39; is empty. If you want to query orders with specific statuses , you can pass the order_status split by (optional)

     - returns: RequestBuilder<Any> 
     */
    open class func orderGetOrdersWithRequestBuilder(orderId: String? = nil, orderLinkId: String? = nil, symbol: String? = nil, order: String? = nil, page: Double? = nil, limit: Double? = nil, orderStatus: String? = nil) -> RequestBuilder<Any> {
        let path = "/open-api/order/list"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "order_id": orderId, 
            "order_link_id": orderLinkId, 
            "symbol": symbol, 
            "order": order, 
            "page": page, 
            "limit": limit, 
            "order_status": orderStatus
        ])

        let requestBuilder: RequestBuilder<Any>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Place active order
     
     - parameter side: (query) Side 
     - parameter symbol: (query) Contract type. 
     - parameter orderType: (query) Active order type 
     - parameter qty: (query)  
     - parameter price: (query) Order price. 
     - parameter timeInForce: (query) Time in force 
     - parameter takeProfit: (query) take profit price (optional)
     - parameter stopLoss: (query) stop loss price (optional)
     - parameter reduceOnly: (query) reduce only (optional)
     - parameter closeOnTrigger: (query) close on trigger (optional)
     - parameter orderLinkId: (query) TCustomized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func orderNew(side: String, symbol: String, orderType: String, qty: Double, price: Double, timeInForce: String, takeProfit: Double? = nil, stopLoss: Double? = nil, reduceOnly: Bool? = nil, closeOnTrigger: Bool? = nil, orderLinkId: String? = nil, completion: @escaping ((_ data: Any?,_ error: Error?) -> Void)) {
        orderNewWithRequestBuilder(side: side, symbol: symbol, orderType: orderType, qty: qty, price: price, timeInForce: timeInForce, takeProfit: takeProfit, stopLoss: stopLoss, reduceOnly: reduceOnly, closeOnTrigger: closeOnTrigger, orderLinkId: orderLinkId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Place active order
     - POST /open-api/order/create
     - API Key:
       - type: apiKey api_key (QUERY)
       - name: apiKey
     - API Key:
       - type: apiKey sign (QUERY)
       - name: apiSignature
     - API Key:
       - type: apiKey timestamp (QUERY)
       - name: timestamp
     - examples: [{contentType=application/json, example=""}]
     
     - parameter side: (query) Side 
     - parameter symbol: (query) Contract type. 
     - parameter orderType: (query) Active order type 
     - parameter qty: (query)  
     - parameter price: (query) Order price. 
     - parameter timeInForce: (query) Time in force 
     - parameter takeProfit: (query) take profit price (optional)
     - parameter stopLoss: (query) stop loss price (optional)
     - parameter reduceOnly: (query) reduce only (optional)
     - parameter closeOnTrigger: (query) close on trigger (optional)
     - parameter orderLinkId: (query) TCustomized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique. (optional)

     - returns: RequestBuilder<Any> 
     */
    open class func orderNewWithRequestBuilder(side: String, symbol: String, orderType: String, qty: Double, price: Double, timeInForce: String, takeProfit: Double? = nil, stopLoss: Double? = nil, reduceOnly: Bool? = nil, closeOnTrigger: Bool? = nil, orderLinkId: String? = nil) -> RequestBuilder<Any> {
        let path = "/open-api/order/create"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "side": side, 
            "symbol": symbol, 
            "order_type": orderType, 
            "qty": qty, 
            "price": price, 
            "time_in_force": timeInForce, 
            "take_profit": takeProfit, 
            "stop_loss": stopLoss, 
            "reduce_only": reduceOnly, 
            "close_on_trigger": closeOnTrigger, 
            "order_link_id": orderLinkId
        ])

        let requestBuilder: RequestBuilder<Any>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Replace active order. Only incomplete orders can be modified. 
     
     - parameter orderId: (query) Order ID. 
     - parameter symbol: (query) Contract type. 
     - parameter pRQty: (query) Order quantity. (optional)
     - parameter pRPrice: (query) Order price. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func orderReplace(orderId: String, symbol: String, pRQty: Double? = nil, pRPrice: Double? = nil, completion: @escaping ((_ data: Any?,_ error: Error?) -> Void)) {
        orderReplaceWithRequestBuilder(orderId: orderId, symbol: symbol, pRQty: pRQty, pRPrice: pRPrice).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Replace active order. Only incomplete orders can be modified. 
     - POST /open-api/order/replace
     - API Key:
       - type: apiKey api_key (QUERY)
       - name: apiKey
     - API Key:
       - type: apiKey sign (QUERY)
       - name: apiSignature
     - API Key:
       - type: apiKey timestamp (QUERY)
       - name: timestamp
     - examples: [{contentType=application/json, example=""}]
     
     - parameter orderId: (query) Order ID. 
     - parameter symbol: (query) Contract type. 
     - parameter pRQty: (query) Order quantity. (optional)
     - parameter pRPrice: (query) Order price. (optional)

     - returns: RequestBuilder<Any> 
     */
    open class func orderReplaceWithRequestBuilder(orderId: String, symbol: String, pRQty: Double? = nil, pRPrice: Double? = nil) -> RequestBuilder<Any> {
        let path = "/open-api/order/replace"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "order_id": orderId, 
            "symbol": symbol, 
            "p_r_qty": pRQty, 
            "p_r_price": pRPrice
        ])

        let requestBuilder: RequestBuilder<Any>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
