/*
 * Bybit API
 * ## REST API for the Bybit Exchange. 
 *
 * OpenAPI spec version: 1.0.0
 * Contact: support@bybit.com
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */


package io.swagger.client.api;

import io.swagger.client.ApiCallback;
import io.swagger.client.ApiClient;
import io.swagger.client.ApiException;
import io.swagger.client.ApiResponse;
import io.swagger.client.Configuration;
import io.swagger.client.Pair;
import io.swagger.client.ProgressRequestBody;
import io.swagger.client.ProgressResponseBody;

import com.google.gson.reflect.TypeToken;

import java.io.IOException;



import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class WalletApi {
    private ApiClient apiClient;

    public WalletApi() {
        this(Configuration.getDefaultApiClient());
    }

    public WalletApi(ApiClient apiClient) {
        this.apiClient = apiClient;
    }

    public ApiClient getApiClient() {
        return apiClient;
    }

    public void setApiClient(ApiClient apiClient) {
        this.apiClient = apiClient;
    }

    /**
     * Build call for walletGetRecords
     * @param startDate Start point for result (optional)
     * @param endDate End point for result (optional)
     * @param currency Currency type (optional)
     * @param walletFundType wallet fund type (optional)
     * @param page Page. Default getting first page data (optional)
     * @param limit Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page (optional)
     * @param progressListener Progress listener
     * @param progressRequestListener Progress request listener
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     */
    public com.squareup.okhttp.Call walletGetRecordsCall(String startDate, String endDate, String currency, String walletFundType, String page, String limit, final ProgressResponseBody.ProgressListener progressListener, final ProgressRequestBody.ProgressRequestListener progressRequestListener) throws ApiException {
        Object localVarPostBody = null;

        // create path and map variables
        String localVarPath = "/open-api/wallet/fund/records";

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        if (startDate != null)
        localVarQueryParams.addAll(apiClient.parameterToPair("start_date", startDate));
        if (endDate != null)
        localVarQueryParams.addAll(apiClient.parameterToPair("end_date", endDate));
        if (currency != null)
        localVarQueryParams.addAll(apiClient.parameterToPair("currency", currency));
        if (walletFundType != null)
        localVarQueryParams.addAll(apiClient.parameterToPair("wallet_fund_type", walletFundType));
        if (page != null)
        localVarQueryParams.addAll(apiClient.parameterToPair("page", page));
        if (limit != null)
        localVarQueryParams.addAll(apiClient.parameterToPair("limit", limit));

        Map<String, String> localVarHeaderParams = new HashMap<String, String>();

        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        final String[] localVarAccepts = {
            "application/json"
        };
        final String localVarAccept = apiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) localVarHeaderParams.put("Accept", localVarAccept);

        final String[] localVarContentTypes = {
            "application/json", "application/x-www-form-urlencoded"
        };
        final String localVarContentType = apiClient.selectHeaderContentType(localVarContentTypes);
        localVarHeaderParams.put("Content-Type", localVarContentType);

        if(progressListener != null) {
            apiClient.getHttpClient().networkInterceptors().add(new com.squareup.okhttp.Interceptor() {
                @Override
                public com.squareup.okhttp.Response intercept(com.squareup.okhttp.Interceptor.Chain chain) throws IOException {
                    com.squareup.okhttp.Response originalResponse = chain.proceed(chain.request());
                    return originalResponse.newBuilder()
                    .body(new ProgressResponseBody(originalResponse.body(), progressListener))
                    .build();
                }
            });
        }

        String[] localVarAuthNames = new String[] { "apiKey", "apiSignature", "timestamp" };
        return apiClient.buildCall(localVarPath, "GET", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarAuthNames, progressRequestListener);
    }

    @SuppressWarnings("rawtypes")
    private com.squareup.okhttp.Call walletGetRecordsValidateBeforeCall(String startDate, String endDate, String currency, String walletFundType, String page, String limit, final ProgressResponseBody.ProgressListener progressListener, final ProgressRequestBody.ProgressRequestListener progressRequestListener) throws ApiException {
        

        com.squareup.okhttp.Call call = walletGetRecordsCall(startDate, endDate, currency, walletFundType, page, limit, progressListener, progressRequestListener);
        return call;

    }

    /**
     * Get wallet fund records
     * 
     * @param startDate Start point for result (optional)
     * @param endDate End point for result (optional)
     * @param currency Currency type (optional)
     * @param walletFundType wallet fund type (optional)
     * @param page Page. Default getting first page data (optional)
     * @param limit Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page (optional)
     * @return Object
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public Object walletGetRecords(String startDate, String endDate, String currency, String walletFundType, String page, String limit) throws ApiException {
        ApiResponse<Object> resp = walletGetRecordsWithHttpInfo(startDate, endDate, currency, walletFundType, page, limit);
        return resp.getData();
    }

    /**
     * Get wallet fund records
     * 
     * @param startDate Start point for result (optional)
     * @param endDate End point for result (optional)
     * @param currency Currency type (optional)
     * @param walletFundType wallet fund type (optional)
     * @param page Page. Default getting first page data (optional)
     * @param limit Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page (optional)
     * @return ApiResponse&lt;Object&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public ApiResponse<Object> walletGetRecordsWithHttpInfo(String startDate, String endDate, String currency, String walletFundType, String page, String limit) throws ApiException {
        com.squareup.okhttp.Call call = walletGetRecordsValidateBeforeCall(startDate, endDate, currency, walletFundType, page, limit, null, null);
        Type localVarReturnType = new TypeToken<Object>(){}.getType();
        return apiClient.execute(call, localVarReturnType);
    }

    /**
     * Get wallet fund records (asynchronously)
     * 
     * @param startDate Start point for result (optional)
     * @param endDate End point for result (optional)
     * @param currency Currency type (optional)
     * @param walletFundType wallet fund type (optional)
     * @param page Page. Default getting first page data (optional)
     * @param limit Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page (optional)
     * @param callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     */
    public com.squareup.okhttp.Call walletGetRecordsAsync(String startDate, String endDate, String currency, String walletFundType, String page, String limit, final ApiCallback<Object> callback) throws ApiException {

        ProgressResponseBody.ProgressListener progressListener = null;
        ProgressRequestBody.ProgressRequestListener progressRequestListener = null;

        if (callback != null) {
            progressListener = new ProgressResponseBody.ProgressListener() {
                @Override
                public void update(long bytesRead, long contentLength, boolean done) {
                    callback.onDownloadProgress(bytesRead, contentLength, done);
                }
            };

            progressRequestListener = new ProgressRequestBody.ProgressRequestListener() {
                @Override
                public void onRequestProgress(long bytesWritten, long contentLength, boolean done) {
                    callback.onUploadProgress(bytesWritten, contentLength, done);
                }
            };
        }

        com.squareup.okhttp.Call call = walletGetRecordsValidateBeforeCall(startDate, endDate, currency, walletFundType, page, limit, progressListener, progressRequestListener);
        Type localVarReturnType = new TypeToken<Object>(){}.getType();
        apiClient.executeAsync(call, localVarReturnType, callback);
        return call;
    }
}
