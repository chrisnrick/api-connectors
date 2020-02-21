/* 
 * Bybit API
 *
 * ## REST API for the Bybit Exchange. Base URI: [https://api-testnet.bybit.com]  
 *
 * OpenAPI spec version: 1.0.0
 * Contact: support@bybit.com
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 */

using System;
using System.IO;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Reflection;
using RestSharp;
using NUnit.Framework;

using IO.Swagger.Client;
using IO.Swagger.Api;

namespace IO.Swagger.Test
{
    /// <summary>
    ///  Class for testing WalletApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by Swagger Codegen.
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    [TestFixture]
    public class WalletApiTests
    {
        private WalletApi instance;

        /// <summary>
        /// Setup before each unit test
        /// </summary>
        [SetUp]
        public void Init()
        {
            instance = new WalletApi();
        }

        /// <summary>
        /// Clean up after each unit test
        /// </summary>
        [TearDown]
        public void Cleanup()
        {

        }

        /// <summary>
        /// Test an instance of WalletApi
        /// </summary>
        [Test]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsInstanceOfType' WalletApi
            //Assert.IsInstanceOfType(typeof(WalletApi), instance, "instance is a WalletApi");
        }

        
        /// <summary>
        /// Test WalletGetRecords
        /// </summary>
        [Test]
        public void WalletGetRecordsTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string startDate = null;
            //string endDate = null;
            //string currency = null;
            //string walletFundType = null;
            //string page = null;
            //string limit = null;
            //var response = instance.WalletGetRecords(startDate, endDate, currency, walletFundType, page, limit);
            //Assert.IsInstanceOf<Object> (response, "response is Object");
        }
        
        /// <summary>
        /// Test WalletGetRiskLimit
        /// </summary>
        [Test]
        public void WalletGetRiskLimitTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //var response = instance.WalletGetRiskLimit();
            //Assert.IsInstanceOf<Object> (response, "response is Object");
        }
        
        /// <summary>
        /// Test WalletSetRiskLimit
        /// </summary>
        [Test]
        public void WalletSetRiskLimitTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string symbol = null;
            //decimal? riskId = null;
            //var response = instance.WalletSetRiskLimit(symbol, riskId);
            //Assert.IsInstanceOf<Object> (response, "response is Object");
        }
        
        /// <summary>
        /// Test WalletWithdraw
        /// </summary>
        [Test]
        public void WalletWithdrawTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string startDate = null;
            //string endDate = null;
            //string coin = null;
            //string status = null;
            //string page = null;
            //string limit = null;
            //var response = instance.WalletWithdraw(startDate, endDate, coin, status, page, limit);
            //Assert.IsInstanceOf<Object> (response, "response is Object");
        }
        
    }

}