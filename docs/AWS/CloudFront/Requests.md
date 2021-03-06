## Module AWS.CloudFront.Requests

#### `createCloudFrontOriginAccessIdentity`

``` purescript
createCloudFrontOriginAccessIdentity :: forall eff. Service -> CreateCloudFrontOriginAccessIdentityRequest -> Aff (exception :: EXCEPTION | eff) CreateCloudFrontOriginAccessIdentityResult
```

<p>Creates a new origin access identity. If you're using Amazon S3 for your origin, you can use an origin access identity to require users to access your content using a CloudFront URL instead of the Amazon S3 URL. For more information about how to use origin access identities, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving Private Content through CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>

#### `createDistribution`

``` purescript
createDistribution :: forall eff. Service -> CreateDistributionRequest -> Aff (exception :: EXCEPTION | eff) CreateDistributionResult
```

<p>Creates a new web distribution. Send a <code>GET</code> request to the <code>/<i>CloudFront API version</i>/distribution</code>/<code>distribution ID</code> resource.</p>

#### `createDistributionWithTags`

``` purescript
createDistributionWithTags :: forall eff. Service -> CreateDistributionWithTagsRequest -> Aff (exception :: EXCEPTION | eff) CreateDistributionWithTagsResult
```

<p>Create a new distribution with tags.</p>

#### `createInvalidation`

``` purescript
createInvalidation :: forall eff. Service -> CreateInvalidationRequest -> Aff (exception :: EXCEPTION | eff) CreateInvalidationResult
```

<p>Create a new invalidation. </p>

#### `createStreamingDistribution`

``` purescript
createStreamingDistribution :: forall eff. Service -> CreateStreamingDistributionRequest -> Aff (exception :: EXCEPTION | eff) CreateStreamingDistributionResult
```

<p>Creates a new RMTP distribution. An RTMP distribution is similar to a web distribution, but an RTMP distribution streams media files using the Adobe Real-Time Messaging Protocol (RTMP) instead of serving files using HTTP. </p> <p>To create a new web distribution, submit a <code>POST</code> request to the <i>CloudFront API version</i>/distribution resource. The request body must include a document with a <i>StreamingDistributionConfig</i> element. The response echoes the <code>StreamingDistributionConfig</code> element and returns other information about the RTMP distribution.</p> <p>To get the status of your request, use the <i>GET StreamingDistribution</i> API action. When the value of <code>Enabled</code> is <code>true</code> and the value of <code>Status</code> is <code>Deployed</code>, your distribution is ready. A distribution usually deploys in less than 15 minutes.</p> <p>For more information about web distributions, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-rtmp.html">Working with RTMP Distributions</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <important> <p>Beginning with the 2012-05-05 version of the CloudFront API, we made substantial changes to the format of the XML document that you include in the request body when you create or update a web distribution or an RTMP distribution, and when you invalidate objects. With previous versions of the API, we discovered that it was too easy to accidentally delete one or more values for an element that accepts multiple values, for example, CNAMEs and trusted signers. Our changes for the 2012-05-05 release are intended to prevent these accidental deletions and to notify you when there's a mismatch between the number of values you say you're specifying in the <code>Quantity</code> element and the number of values specified.</p> </important>

#### `createStreamingDistributionWithTags`

``` purescript
createStreamingDistributionWithTags :: forall eff. Service -> CreateStreamingDistributionWithTagsRequest -> Aff (exception :: EXCEPTION | eff) CreateStreamingDistributionWithTagsResult
```

<p>Create a new streaming distribution with tags.</p>

#### `deleteCloudFrontOriginAccessIdentity`

``` purescript
deleteCloudFrontOriginAccessIdentity :: forall eff. Service -> DeleteCloudFrontOriginAccessIdentityRequest -> Aff (exception :: EXCEPTION | eff) Unit
```

<p>Delete an origin access identity. </p>

#### `deleteDistribution`

``` purescript
deleteDistribution :: forall eff. Service -> DeleteDistributionRequest -> Aff (exception :: EXCEPTION | eff) Unit
```

<p>Delete a distribution. </p>

#### `deleteStreamingDistribution`

``` purescript
deleteStreamingDistribution :: forall eff. Service -> DeleteStreamingDistributionRequest -> Aff (exception :: EXCEPTION | eff) Unit
```

<p>Delete a streaming distribution. To delete an RTMP distribution using the CloudFront API, perform the following steps.</p> <p> <b>To delete an RTMP distribution using the CloudFront API</b>:</p> <ol> <li> <p>Disable the RTMP distribution.</p> </li> <li> <p>Submit a <code>GET Streaming Distribution Config</code> request to get the current configuration and the <code>Etag</code> header for the distribution. </p> </li> <li> <p>Update the XML document that was returned in the response to your <code>GET Streaming Distribution Config</code> request to change the value of <code>Enabled</code> to <code>false</code>.</p> </li> <li> <p>Submit a <code>PUT Streaming Distribution Config</code> request to update the configuration for your distribution. In the request body, include the XML document that you updated in Step 3. Then set the value of the HTTP <code>If-Match</code> header to the value of the <code>ETag</code> header that CloudFront returned when you submitted the <code>GET Streaming Distribution Config</code> request in Step 2.</p> </li> <li> <p>Review the response to the <code>PUT Streaming Distribution Config</code> request to confirm that the distribution was successfully disabled.</p> </li> <li> <p>Submit a <code>GET Streaming Distribution Config</code> request to confirm that your changes have propagated. When propagation is complete, the value of <code>Status</code> is <code>Deployed</code>.</p> </li> <li> <p>Submit a <code>DELETE Streaming Distribution</code> request. Set the value of the HTTP <code>If-Match</code> header to the value of the <code>ETag</code> header that CloudFront returned when you submitted the <code>GET Streaming Distribution Config</code> request in Step 2.</p> </li> <li> <p>Review the response to your <code>DELETE Streaming Distribution</code> request to confirm that the distribution was successfully deleted.</p> </li> </ol> <p>For information about deleting a distribution using the CloudFront console, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/HowToDeleteDistribution.html">Deleting a Distribution</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>

#### `getCloudFrontOriginAccessIdentity`

``` purescript
getCloudFrontOriginAccessIdentity :: forall eff. Service -> GetCloudFrontOriginAccessIdentityRequest -> Aff (exception :: EXCEPTION | eff) GetCloudFrontOriginAccessIdentityResult
```

<p>Get the information about an origin access identity. </p>

#### `getCloudFrontOriginAccessIdentityConfig`

``` purescript
getCloudFrontOriginAccessIdentityConfig :: forall eff. Service -> GetCloudFrontOriginAccessIdentityConfigRequest -> Aff (exception :: EXCEPTION | eff) GetCloudFrontOriginAccessIdentityConfigResult
```

<p>Get the configuration information about an origin access identity. </p>

#### `getDistribution`

``` purescript
getDistribution :: forall eff. Service -> GetDistributionRequest -> Aff (exception :: EXCEPTION | eff) GetDistributionResult
```

<p>Get the information about a distribution. </p>

#### `getDistributionConfig`

``` purescript
getDistributionConfig :: forall eff. Service -> GetDistributionConfigRequest -> Aff (exception :: EXCEPTION | eff) GetDistributionConfigResult
```

<p>Get the configuration information about a distribution. </p>

#### `getInvalidation`

``` purescript
getInvalidation :: forall eff. Service -> GetInvalidationRequest -> Aff (exception :: EXCEPTION | eff) GetInvalidationResult
```

<p>Get the information about an invalidation. </p>

#### `getStreamingDistribution`

``` purescript
getStreamingDistribution :: forall eff. Service -> GetStreamingDistributionRequest -> Aff (exception :: EXCEPTION | eff) GetStreamingDistributionResult
```

<p>Gets information about a specified RTMP distribution, including the distribution configuration.</p>

#### `getStreamingDistributionConfig`

``` purescript
getStreamingDistributionConfig :: forall eff. Service -> GetStreamingDistributionConfigRequest -> Aff (exception :: EXCEPTION | eff) GetStreamingDistributionConfigResult
```

<p>Get the configuration information about a streaming distribution. </p>

#### `listCloudFrontOriginAccessIdentities`

``` purescript
listCloudFrontOriginAccessIdentities :: forall eff. Service -> ListCloudFrontOriginAccessIdentitiesRequest -> Aff (exception :: EXCEPTION | eff) ListCloudFrontOriginAccessIdentitiesResult
```

<p>Lists origin access identities.</p>

#### `listDistributions`

``` purescript
listDistributions :: forall eff. Service -> ListDistributionsRequest -> Aff (exception :: EXCEPTION | eff) ListDistributionsResult
```

<p>List distributions. </p>

#### `listDistributionsByWebACLId`

``` purescript
listDistributionsByWebACLId :: forall eff. Service -> ListDistributionsByWebACLIdRequest -> Aff (exception :: EXCEPTION | eff) ListDistributionsByWebACLIdResult
```

<p>List the distributions that are associated with a specified AWS WAF web ACL. </p>

#### `listInvalidations`

``` purescript
listInvalidations :: forall eff. Service -> ListInvalidationsRequest -> Aff (exception :: EXCEPTION | eff) ListInvalidationsResult
```

<p>Lists invalidation batches. </p>

#### `listStreamingDistributions`

``` purescript
listStreamingDistributions :: forall eff. Service -> ListStreamingDistributionsRequest -> Aff (exception :: EXCEPTION | eff) ListStreamingDistributionsResult
```

<p>List streaming distributions. </p>

#### `listTagsForResource`

``` purescript
listTagsForResource :: forall eff. Service -> ListTagsForResourceRequest -> Aff (exception :: EXCEPTION | eff) ListTagsForResourceResult
```

<p>List tags for a CloudFront resource.</p>

#### `tagResource`

``` purescript
tagResource :: forall eff. Service -> TagResourceRequest -> Aff (exception :: EXCEPTION | eff) Unit
```

<p>Add tags to a CloudFront resource.</p>

#### `untagResource`

``` purescript
untagResource :: forall eff. Service -> UntagResourceRequest -> Aff (exception :: EXCEPTION | eff) Unit
```

<p>Remove tags from a CloudFront resource.</p>

#### `updateCloudFrontOriginAccessIdentity`

``` purescript
updateCloudFrontOriginAccessIdentity :: forall eff. Service -> UpdateCloudFrontOriginAccessIdentityRequest -> Aff (exception :: EXCEPTION | eff) UpdateCloudFrontOriginAccessIdentityResult
```

<p>Update an origin access identity. </p>

#### `updateDistribution`

``` purescript
updateDistribution :: forall eff. Service -> UpdateDistributionRequest -> Aff (exception :: EXCEPTION | eff) UpdateDistributionResult
```

<p>Update a distribution. </p>

#### `updateStreamingDistribution`

``` purescript
updateStreamingDistribution :: forall eff. Service -> UpdateStreamingDistributionRequest -> Aff (exception :: EXCEPTION | eff) UpdateStreamingDistributionResult
```

<p>Update a streaming distribution. </p>


