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
    ///  Class for testing CommonApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by Swagger Codegen.
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    [TestFixture]
    public class CommonApiTests
    {
        private CommonApi instance;

        /// <summary>
        /// Setup before each unit test
        /// </summary>
        [SetUp]
        public void Init()
        {
            instance = new CommonApi();
        }

        /// <summary>
        /// Clean up after each unit test
        /// </summary>
        [TearDown]
        public void Cleanup()
        {

        }

        /// <summary>
        /// Test an instance of CommonApi
        /// </summary>
        [Test]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsInstanceOfType' CommonApi
            //Assert.IsInstanceOfType(typeof(CommonApi), instance, "instance is a CommonApi");
        }

        
        /// <summary>
        /// Test CommonGet
        /// </summary>
        [Test]
        public void CommonGetTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //var response = instance.CommonGet();
            //Assert.IsInstanceOf<Object> (response, "response is Object");
        }
        
    }

}