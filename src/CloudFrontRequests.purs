
module AWS.CloudFront.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.CloudFront as CloudFront
import AWS.CloudFront.Types as CloudFrontTypes


-- | <p>Creates a new origin access identity. If you're using Amazon S3 for your origin, you can use an origin access identity to require users to access your content using a CloudFront URL instead of the Amazon S3 URL. For more information about how to use origin access identities, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving Private Content through CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
createCloudFrontOriginAccessIdentity :: forall eff. CloudFront.Service -> CloudFrontTypes.CreateCloudFrontOriginAccessIdentityRequest -> Aff (exception :: EXCEPTION | eff) CloudFrontTypes.CreateCloudFrontOriginAccessIdentityResult
createCloudFrontOriginAccessIdentity (CloudFront.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createCloudFrontOriginAccessIdentity"


-- | <p>Creates a new web distribution. Send a <code>GET</code> request to the <code>/<i>CloudFront API version</i>/distribution</code>/<code>distribution ID</code> resource.</p>
createDistribution :: forall eff. CloudFront.Service -> CloudFrontTypes.CreateDistributionRequest -> Aff (exception :: EXCEPTION | eff) CloudFrontTypes.CreateDistributionResult
createDistribution (CloudFront.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createDistribution"


-- | <p>Create a new distribution with tags.</p>
createDistributionWithTags :: forall eff. CloudFront.Service -> CloudFrontTypes.CreateDistributionWithTagsRequest -> Aff (exception :: EXCEPTION | eff) CloudFrontTypes.CreateDistributionWithTagsResult
createDistributionWithTags (CloudFront.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createDistributionWithTags"


-- | <p>Create a new invalidation. </p>
createInvalidation :: forall eff. CloudFront.Service -> CloudFrontTypes.CreateInvalidationRequest -> Aff (exception :: EXCEPTION | eff) CloudFrontTypes.CreateInvalidationResult
createInvalidation (CloudFront.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createInvalidation"


-- | <p>Creates a new RMTP distribution. An RTMP distribution is similar to a web distribution, but an RTMP distribution streams media files using the Adobe Real-Time Messaging Protocol (RTMP) instead of serving files using HTTP. </p> <p>To create a new web distribution, submit a <code>POST</code> request to the <i>CloudFront API version</i>/distribution resource. The request body must include a document with a <i>StreamingDistributionConfig</i> element. The response echoes the <code>StreamingDistributionConfig</code> element and returns other information about the RTMP distribution.</p> <p>To get the status of your request, use the <i>GET StreamingDistribution</i> API action. When the value of <code>Enabled</code> is <code>true</code> and the value of <code>Status</code> is <code>Deployed</code>, your distribution is ready. A distribution usually deploys in less than 15 minutes.</p> <p>For more information about web distributions, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-rtmp.html">Working with RTMP Distributions</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <important> <p>Beginning with the 2012-05-05 version of the CloudFront API, we made substantial changes to the format of the XML document that you include in the request body when you create or update a web distribution or an RTMP distribution, and when you invalidate objects. With previous versions of the API, we discovered that it was too easy to accidentally delete one or more values for an element that accepts multiple values, for example, CNAMEs and trusted signers. Our changes for the 2012-05-05 release are intended to prevent these accidental deletions and to notify you when there's a mismatch between the number of values you say you're specifying in the <code>Quantity</code> element and the number of values specified.</p> </important>
createStreamingDistribution :: forall eff. CloudFront.Service -> CloudFrontTypes.CreateStreamingDistributionRequest -> Aff (exception :: EXCEPTION | eff) CloudFrontTypes.CreateStreamingDistributionResult
createStreamingDistribution (CloudFront.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createStreamingDistribution"


-- | <p>Create a new streaming distribution with tags.</p>
createStreamingDistributionWithTags :: forall eff. CloudFront.Service -> CloudFrontTypes.CreateStreamingDistributionWithTagsRequest -> Aff (exception :: EXCEPTION | eff) CloudFrontTypes.CreateStreamingDistributionWithTagsResult
createStreamingDistributionWithTags (CloudFront.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createStreamingDistributionWithTags"


-- | <p>Delete an origin access identity. </p>
deleteCloudFrontOriginAccessIdentity :: forall eff. CloudFront.Service -> CloudFrontTypes.DeleteCloudFrontOriginAccessIdentityRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteCloudFrontOriginAccessIdentity (CloudFront.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteCloudFrontOriginAccessIdentity"


-- | <p>Delete a distribution. </p>
deleteDistribution :: forall eff. CloudFront.Service -> CloudFrontTypes.DeleteDistributionRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteDistribution (CloudFront.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteDistribution"


-- | <p>Delete a streaming distribution. To delete an RTMP distribution using the CloudFront API, perform the following steps.</p> <p> <b>To delete an RTMP distribution using the CloudFront API</b>:</p> <ol> <li> <p>Disable the RTMP distribution.</p> </li> <li> <p>Submit a <code>GET Streaming Distribution Config</code> request to get the current configuration and the <code>Etag</code> header for the distribution. </p> </li> <li> <p>Update the XML document that was returned in the response to your <code>GET Streaming Distribution Config</code> request to change the value of <code>Enabled</code> to <code>false</code>.</p> </li> <li> <p>Submit a <code>PUT Streaming Distribution Config</code> request to update the configuration for your distribution. In the request body, include the XML document that you updated in Step 3. Then set the value of the HTTP <code>If-Match</code> header to the value of the <code>ETag</code> header that CloudFront returned when you submitted the <code>GET Streaming Distribution Config</code> request in Step 2.</p> </li> <li> <p>Review the response to the <code>PUT Streaming Distribution Config</code> request to confirm that the distribution was successfully disabled.</p> </li> <li> <p>Submit a <code>GET Streaming Distribution Config</code> request to confirm that your changes have propagated. When propagation is complete, the value of <code>Status</code> is <code>Deployed</code>.</p> </li> <li> <p>Submit a <code>DELETE Streaming Distribution</code> request. Set the value of the HTTP <code>If-Match</code> header to the value of the <code>ETag</code> header that CloudFront returned when you submitted the <code>GET Streaming Distribution Config</code> request in Step 2.</p> </li> <li> <p>Review the response to your <code>DELETE Streaming Distribution</code> request to confirm that the distribution was successfully deleted.</p> </li> </ol> <p>For information about deleting a distribution using the CloudFront console, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/HowToDeleteDistribution.html">Deleting a Distribution</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
deleteStreamingDistribution :: forall eff. CloudFront.Service -> CloudFrontTypes.DeleteStreamingDistributionRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteStreamingDistribution (CloudFront.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteStreamingDistribution"


-- | <p>Get the information about an origin access identity. </p>
getCloudFrontOriginAccessIdentity :: forall eff. CloudFront.Service -> CloudFrontTypes.GetCloudFrontOriginAccessIdentityRequest -> Aff (exception :: EXCEPTION | eff) CloudFrontTypes.GetCloudFrontOriginAccessIdentityResult
getCloudFrontOriginAccessIdentity (CloudFront.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getCloudFrontOriginAccessIdentity"


-- | <p>Get the configuration information about an origin access identity. </p>
getCloudFrontOriginAccessIdentityConfig :: forall eff. CloudFront.Service -> CloudFrontTypes.GetCloudFrontOriginAccessIdentityConfigRequest -> Aff (exception :: EXCEPTION | eff) CloudFrontTypes.GetCloudFrontOriginAccessIdentityConfigResult
getCloudFrontOriginAccessIdentityConfig (CloudFront.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getCloudFrontOriginAccessIdentityConfig"


-- | <p>Get the information about a distribution. </p>
getDistribution :: forall eff. CloudFront.Service -> CloudFrontTypes.GetDistributionRequest -> Aff (exception :: EXCEPTION | eff) CloudFrontTypes.GetDistributionResult
getDistribution (CloudFront.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getDistribution"


-- | <p>Get the configuration information about a distribution. </p>
getDistributionConfig :: forall eff. CloudFront.Service -> CloudFrontTypes.GetDistributionConfigRequest -> Aff (exception :: EXCEPTION | eff) CloudFrontTypes.GetDistributionConfigResult
getDistributionConfig (CloudFront.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getDistributionConfig"


-- | <p>Get the information about an invalidation. </p>
getInvalidation :: forall eff. CloudFront.Service -> CloudFrontTypes.GetInvalidationRequest -> Aff (exception :: EXCEPTION | eff) CloudFrontTypes.GetInvalidationResult
getInvalidation (CloudFront.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getInvalidation"


-- | <p>Gets information about a specified RTMP distribution, including the distribution configuration.</p>
getStreamingDistribution :: forall eff. CloudFront.Service -> CloudFrontTypes.GetStreamingDistributionRequest -> Aff (exception :: EXCEPTION | eff) CloudFrontTypes.GetStreamingDistributionResult
getStreamingDistribution (CloudFront.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getStreamingDistribution"


-- | <p>Get the configuration information about a streaming distribution. </p>
getStreamingDistributionConfig :: forall eff. CloudFront.Service -> CloudFrontTypes.GetStreamingDistributionConfigRequest -> Aff (exception :: EXCEPTION | eff) CloudFrontTypes.GetStreamingDistributionConfigResult
getStreamingDistributionConfig (CloudFront.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getStreamingDistributionConfig"


-- | <p>Lists origin access identities.</p>
listCloudFrontOriginAccessIdentities :: forall eff. CloudFront.Service -> CloudFrontTypes.ListCloudFrontOriginAccessIdentitiesRequest -> Aff (exception :: EXCEPTION | eff) CloudFrontTypes.ListCloudFrontOriginAccessIdentitiesResult
listCloudFrontOriginAccessIdentities (CloudFront.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listCloudFrontOriginAccessIdentities"


-- | <p>List distributions. </p>
listDistributions :: forall eff. CloudFront.Service -> CloudFrontTypes.ListDistributionsRequest -> Aff (exception :: EXCEPTION | eff) CloudFrontTypes.ListDistributionsResult
listDistributions (CloudFront.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listDistributions"


-- | <p>List the distributions that are associated with a specified AWS WAF web ACL. </p>
listDistributionsByWebACLId :: forall eff. CloudFront.Service -> CloudFrontTypes.ListDistributionsByWebACLIdRequest -> Aff (exception :: EXCEPTION | eff) CloudFrontTypes.ListDistributionsByWebACLIdResult
listDistributionsByWebACLId (CloudFront.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listDistributionsByWebACLId"


-- | <p>Lists invalidation batches. </p>
listInvalidations :: forall eff. CloudFront.Service -> CloudFrontTypes.ListInvalidationsRequest -> Aff (exception :: EXCEPTION | eff) CloudFrontTypes.ListInvalidationsResult
listInvalidations (CloudFront.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listInvalidations"


-- | <p>List streaming distributions. </p>
listStreamingDistributions :: forall eff. CloudFront.Service -> CloudFrontTypes.ListStreamingDistributionsRequest -> Aff (exception :: EXCEPTION | eff) CloudFrontTypes.ListStreamingDistributionsResult
listStreamingDistributions (CloudFront.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listStreamingDistributions"


-- | <p>List tags for a CloudFront resource.</p>
listTagsForResource :: forall eff. CloudFront.Service -> CloudFrontTypes.ListTagsForResourceRequest -> Aff (exception :: EXCEPTION | eff) CloudFrontTypes.ListTagsForResourceResult
listTagsForResource (CloudFront.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listTagsForResource"


-- | <p>Add tags to a CloudFront resource.</p>
tagResource :: forall eff. CloudFront.Service -> CloudFrontTypes.TagResourceRequest -> Aff (exception :: EXCEPTION | eff) Unit
tagResource (CloudFront.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "tagResource"


-- | <p>Remove tags from a CloudFront resource.</p>
untagResource :: forall eff. CloudFront.Service -> CloudFrontTypes.UntagResourceRequest -> Aff (exception :: EXCEPTION | eff) Unit
untagResource (CloudFront.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "untagResource"


-- | <p>Update an origin access identity. </p>
updateCloudFrontOriginAccessIdentity :: forall eff. CloudFront.Service -> CloudFrontTypes.UpdateCloudFrontOriginAccessIdentityRequest -> Aff (exception :: EXCEPTION | eff) CloudFrontTypes.UpdateCloudFrontOriginAccessIdentityResult
updateCloudFrontOriginAccessIdentity (CloudFront.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateCloudFrontOriginAccessIdentity"


-- | <p>Update a distribution. </p>
updateDistribution :: forall eff. CloudFront.Service -> CloudFrontTypes.UpdateDistributionRequest -> Aff (exception :: EXCEPTION | eff) CloudFrontTypes.UpdateDistributionResult
updateDistribution (CloudFront.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateDistribution"


-- | <p>Update a streaming distribution. </p>
updateStreamingDistribution :: forall eff. CloudFront.Service -> CloudFrontTypes.UpdateStreamingDistributionRequest -> Aff (exception :: EXCEPTION | eff) CloudFrontTypes.UpdateStreamingDistributionResult
updateStreamingDistribution (CloudFront.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateStreamingDistribution"
