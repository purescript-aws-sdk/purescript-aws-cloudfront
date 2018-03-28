## Module AWS.CloudFront.Types

#### `options`

``` purescript
options :: Options
```

#### `AccessDenied`

``` purescript
newtype AccessDenied
  = AccessDenied { "Message" :: NullOrUndefined (String) }
```

<p>Access denied.</p>

##### Instances
``` purescript
Newtype AccessDenied _
Generic AccessDenied _
Show AccessDenied
Decode AccessDenied
Encode AccessDenied
```

#### `newAccessDenied`

``` purescript
newAccessDenied :: AccessDenied
```

Constructs AccessDenied from required parameters

#### `newAccessDenied'`

``` purescript
newAccessDenied' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> AccessDenied
```

Constructs AccessDenied's fields from required parameters

#### `ActiveTrustedSigners`

``` purescript
newtype ActiveTrustedSigners
  = ActiveTrustedSigners { "Enabled" :: Boolean, "Quantity" :: Int, "Items" :: NullOrUndefined (SignerList) }
```

<p>A complex type that lists the AWS accounts, if any, that you included in the <code>TrustedSigners</code> complex type for this distribution. These are the accounts that you want to allow to create signed URLs for private content.</p> <p>The <code>Signer</code> complex type lists the AWS account number of the trusted signer or <code>self</code> if the signer is the AWS account that created the distribution. The <code>Signer</code> element also includes the IDs of any active CloudFront key pairs that are associated with the trusted signer's AWS account. If no <code>KeyPairId</code> element appears for a <code>Signer</code>, that signer can't create signed URLs. </p> <p>For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving Private Content through CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>

##### Instances
``` purescript
Newtype ActiveTrustedSigners _
Generic ActiveTrustedSigners _
Show ActiveTrustedSigners
Decode ActiveTrustedSigners
Encode ActiveTrustedSigners
```

#### `newActiveTrustedSigners`

``` purescript
newActiveTrustedSigners :: Boolean -> Int -> ActiveTrustedSigners
```

Constructs ActiveTrustedSigners from required parameters

#### `newActiveTrustedSigners'`

``` purescript
newActiveTrustedSigners' :: Boolean -> Int -> ({ "Enabled" :: Boolean, "Quantity" :: Int, "Items" :: NullOrUndefined (SignerList) } -> { "Enabled" :: Boolean, "Quantity" :: Int, "Items" :: NullOrUndefined (SignerList) }) -> ActiveTrustedSigners
```

Constructs ActiveTrustedSigners's fields from required parameters

#### `AliasList`

``` purescript
newtype AliasList
  = AliasList (Array String)
```

##### Instances
``` purescript
Newtype AliasList _
Generic AliasList _
Show AliasList
Decode AliasList
Encode AliasList
```

#### `Aliases`

``` purescript
newtype Aliases
  = Aliases { "Quantity" :: Int, "Items" :: NullOrUndefined (AliasList) }
```

<p>A complex type that contains information about CNAMEs (alternate domain names), if any, for this distribution. </p>

##### Instances
``` purescript
Newtype Aliases _
Generic Aliases _
Show Aliases
Decode Aliases
Encode Aliases
```

#### `newAliases`

``` purescript
newAliases :: Int -> Aliases
```

Constructs Aliases from required parameters

#### `newAliases'`

``` purescript
newAliases' :: Int -> ({ "Quantity" :: Int, "Items" :: NullOrUndefined (AliasList) } -> { "Quantity" :: Int, "Items" :: NullOrUndefined (AliasList) }) -> Aliases
```

Constructs Aliases's fields from required parameters

#### `AllowedMethods`

``` purescript
newtype AllowedMethods
  = AllowedMethods { "Quantity" :: Int, "Items" :: MethodsList, "CachedMethods" :: NullOrUndefined (CachedMethods) }
```

<p>A complex type that controls which HTTP methods CloudFront processes and forwards to your Amazon S3 bucket or your custom origin. There are three choices:</p> <ul> <li> <p>CloudFront forwards only <code>GET</code> and <code>HEAD</code> requests.</p> </li> <li> <p>CloudFront forwards only <code>GET</code>, <code>HEAD</code>, and <code>OPTIONS</code> requests.</p> </li> <li> <p>CloudFront forwards <code>GET, HEAD, OPTIONS, PUT, PATCH, POST</code>, and <code>DELETE</code> requests.</p> </li> </ul> <p>If you pick the third choice, you may need to restrict access to your Amazon S3 bucket or to your custom origin so users can't perform operations that you don't want them to. For example, you might not want users to have permissions to delete objects from your origin.</p>

##### Instances
``` purescript
Newtype AllowedMethods _
Generic AllowedMethods _
Show AllowedMethods
Decode AllowedMethods
Encode AllowedMethods
```

#### `newAllowedMethods`

``` purescript
newAllowedMethods :: MethodsList -> Int -> AllowedMethods
```

Constructs AllowedMethods from required parameters

#### `newAllowedMethods'`

``` purescript
newAllowedMethods' :: MethodsList -> Int -> ({ "Quantity" :: Int, "Items" :: MethodsList, "CachedMethods" :: NullOrUndefined (CachedMethods) } -> { "Quantity" :: Int, "Items" :: MethodsList, "CachedMethods" :: NullOrUndefined (CachedMethods) }) -> AllowedMethods
```

Constructs AllowedMethods's fields from required parameters

#### `AwsAccountNumberList`

``` purescript
newtype AwsAccountNumberList
  = AwsAccountNumberList (Array String)
```

##### Instances
``` purescript
Newtype AwsAccountNumberList _
Generic AwsAccountNumberList _
Show AwsAccountNumberList
Decode AwsAccountNumberList
Encode AwsAccountNumberList
```

#### `BatchTooLarge`

``` purescript
newtype BatchTooLarge
  = BatchTooLarge { "Message" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype BatchTooLarge _
Generic BatchTooLarge _
Show BatchTooLarge
Decode BatchTooLarge
Encode BatchTooLarge
```

#### `newBatchTooLarge`

``` purescript
newBatchTooLarge :: BatchTooLarge
```

Constructs BatchTooLarge from required parameters

#### `newBatchTooLarge'`

``` purescript
newBatchTooLarge' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> BatchTooLarge
```

Constructs BatchTooLarge's fields from required parameters

#### `CNAMEAlreadyExists`

``` purescript
newtype CNAMEAlreadyExists
  = CNAMEAlreadyExists { "Message" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype CNAMEAlreadyExists _
Generic CNAMEAlreadyExists _
Show CNAMEAlreadyExists
Decode CNAMEAlreadyExists
Encode CNAMEAlreadyExists
```

#### `newCNAMEAlreadyExists`

``` purescript
newCNAMEAlreadyExists :: CNAMEAlreadyExists
```

Constructs CNAMEAlreadyExists from required parameters

#### `newCNAMEAlreadyExists'`

``` purescript
newCNAMEAlreadyExists' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> CNAMEAlreadyExists
```

Constructs CNAMEAlreadyExists's fields from required parameters

#### `CacheBehavior`

``` purescript
newtype CacheBehavior
  = CacheBehavior { "PathPattern" :: String, "TargetOriginId" :: String, "ForwardedValues" :: ForwardedValues, "TrustedSigners" :: TrustedSigners, "ViewerProtocolPolicy" :: ViewerProtocolPolicy, "MinTTL" :: Number, "AllowedMethods" :: NullOrUndefined (AllowedMethods), "SmoothStreaming" :: NullOrUndefined (Boolean), "DefaultTTL" :: NullOrUndefined (Number), "MaxTTL" :: NullOrUndefined (Number), "Compress" :: NullOrUndefined (Boolean), "LambdaFunctionAssociations" :: NullOrUndefined (LambdaFunctionAssociations) }
```

<p>A complex type that describes how CloudFront processes requests.</p> <p>You must create at least as many cache behaviors (including the default cache behavior) as you have origins if you want CloudFront to distribute objects from all of the origins. Each cache behavior specifies the one origin from which you want CloudFront to get objects. If you have two origins and only the default cache behavior, the default cache behavior will cause CloudFront to get objects from one of the origins, but the other origin is never used.</p> <p>For the current limit on the number of cache behaviors that you can add to a distribution, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_cloudfront">Amazon CloudFront Limits</a> in the <i>AWS General Reference</i>.</p> <p>If you don't want to specify any cache behaviors, include only an empty <code>CacheBehaviors</code> element. Don't include an empty <code>CacheBehavior</code> element, or CloudFront returns a <code>MalformedXML</code> error.</p> <p>To delete all cache behaviors in an existing distribution, update the distribution configuration and include only an empty <code>CacheBehaviors</code> element.</p> <p>To add, change, or remove one or more cache behaviors, update the distribution configuration and specify all of the cache behaviors that you want to include in the updated distribution.</p> <p>For more information about cache behaviors, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesCacheBehavior">Cache Behaviors</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>

##### Instances
``` purescript
Newtype CacheBehavior _
Generic CacheBehavior _
Show CacheBehavior
Decode CacheBehavior
Encode CacheBehavior
```

#### `newCacheBehavior`

``` purescript
newCacheBehavior :: ForwardedValues -> Number -> String -> String -> TrustedSigners -> ViewerProtocolPolicy -> CacheBehavior
```

Constructs CacheBehavior from required parameters

#### `newCacheBehavior'`

``` purescript
newCacheBehavior' :: ForwardedValues -> Number -> String -> String -> TrustedSigners -> ViewerProtocolPolicy -> ({ "PathPattern" :: String, "TargetOriginId" :: String, "ForwardedValues" :: ForwardedValues, "TrustedSigners" :: TrustedSigners, "ViewerProtocolPolicy" :: ViewerProtocolPolicy, "MinTTL" :: Number, "AllowedMethods" :: NullOrUndefined (AllowedMethods), "SmoothStreaming" :: NullOrUndefined (Boolean), "DefaultTTL" :: NullOrUndefined (Number), "MaxTTL" :: NullOrUndefined (Number), "Compress" :: NullOrUndefined (Boolean), "LambdaFunctionAssociations" :: NullOrUndefined (LambdaFunctionAssociations) } -> { "PathPattern" :: String, "TargetOriginId" :: String, "ForwardedValues" :: ForwardedValues, "TrustedSigners" :: TrustedSigners, "ViewerProtocolPolicy" :: ViewerProtocolPolicy, "MinTTL" :: Number, "AllowedMethods" :: NullOrUndefined (AllowedMethods), "SmoothStreaming" :: NullOrUndefined (Boolean), "DefaultTTL" :: NullOrUndefined (Number), "MaxTTL" :: NullOrUndefined (Number), "Compress" :: NullOrUndefined (Boolean), "LambdaFunctionAssociations" :: NullOrUndefined (LambdaFunctionAssociations) }) -> CacheBehavior
```

Constructs CacheBehavior's fields from required parameters

#### `CacheBehaviorList`

``` purescript
newtype CacheBehaviorList
  = CacheBehaviorList (Array CacheBehavior)
```

##### Instances
``` purescript
Newtype CacheBehaviorList _
Generic CacheBehaviorList _
Show CacheBehaviorList
Decode CacheBehaviorList
Encode CacheBehaviorList
```

#### `CacheBehaviors`

``` purescript
newtype CacheBehaviors
  = CacheBehaviors { "Quantity" :: Int, "Items" :: NullOrUndefined (CacheBehaviorList) }
```

<p>A complex type that contains zero or more <code>CacheBehavior</code> elements. </p>

##### Instances
``` purescript
Newtype CacheBehaviors _
Generic CacheBehaviors _
Show CacheBehaviors
Decode CacheBehaviors
Encode CacheBehaviors
```

#### `newCacheBehaviors`

``` purescript
newCacheBehaviors :: Int -> CacheBehaviors
```

Constructs CacheBehaviors from required parameters

#### `newCacheBehaviors'`

``` purescript
newCacheBehaviors' :: Int -> ({ "Quantity" :: Int, "Items" :: NullOrUndefined (CacheBehaviorList) } -> { "Quantity" :: Int, "Items" :: NullOrUndefined (CacheBehaviorList) }) -> CacheBehaviors
```

Constructs CacheBehaviors's fields from required parameters

#### `CachedMethods`

``` purescript
newtype CachedMethods
  = CachedMethods { "Quantity" :: Int, "Items" :: MethodsList }
```

<p>A complex type that controls whether CloudFront caches the response to requests using the specified HTTP methods. There are two choices:</p> <ul> <li> <p>CloudFront caches responses to <code>GET</code> and <code>HEAD</code> requests.</p> </li> <li> <p>CloudFront caches responses to <code>GET</code>, <code>HEAD</code>, and <code>OPTIONS</code> requests.</p> </li> </ul> <p>If you pick the second choice for your Amazon S3 Origin, you may need to forward Access-Control-Request-Method, Access-Control-Request-Headers, and Origin headers for the responses to be cached correctly. </p>

##### Instances
``` purescript
Newtype CachedMethods _
Generic CachedMethods _
Show CachedMethods
Decode CachedMethods
Encode CachedMethods
```

#### `newCachedMethods`

``` purescript
newCachedMethods :: MethodsList -> Int -> CachedMethods
```

Constructs CachedMethods from required parameters

#### `newCachedMethods'`

``` purescript
newCachedMethods' :: MethodsList -> Int -> ({ "Quantity" :: Int, "Items" :: MethodsList } -> { "Quantity" :: Int, "Items" :: MethodsList }) -> CachedMethods
```

Constructs CachedMethods's fields from required parameters

#### `CertificateSource`

``` purescript
newtype CertificateSource
  = CertificateSource String
```

##### Instances
``` purescript
Newtype CertificateSource _
Generic CertificateSource _
Show CertificateSource
Decode CertificateSource
Encode CertificateSource
```

#### `CloudFrontOriginAccessIdentity`

``` purescript
newtype CloudFrontOriginAccessIdentity
  = CloudFrontOriginAccessIdentity { "Id" :: String, "S3CanonicalUserId" :: String, "CloudFrontOriginAccessIdentityConfig" :: NullOrUndefined (CloudFrontOriginAccessIdentityConfig) }
```

<p>CloudFront origin access identity.</p>

##### Instances
``` purescript
Newtype CloudFrontOriginAccessIdentity _
Generic CloudFrontOriginAccessIdentity _
Show CloudFrontOriginAccessIdentity
Decode CloudFrontOriginAccessIdentity
Encode CloudFrontOriginAccessIdentity
```

#### `newCloudFrontOriginAccessIdentity`

``` purescript
newCloudFrontOriginAccessIdentity :: String -> String -> CloudFrontOriginAccessIdentity
```

Constructs CloudFrontOriginAccessIdentity from required parameters

#### `newCloudFrontOriginAccessIdentity'`

``` purescript
newCloudFrontOriginAccessIdentity' :: String -> String -> ({ "Id" :: String, "S3CanonicalUserId" :: String, "CloudFrontOriginAccessIdentityConfig" :: NullOrUndefined (CloudFrontOriginAccessIdentityConfig) } -> { "Id" :: String, "S3CanonicalUserId" :: String, "CloudFrontOriginAccessIdentityConfig" :: NullOrUndefined (CloudFrontOriginAccessIdentityConfig) }) -> CloudFrontOriginAccessIdentity
```

Constructs CloudFrontOriginAccessIdentity's fields from required parameters

#### `CloudFrontOriginAccessIdentityAlreadyExists`

``` purescript
newtype CloudFrontOriginAccessIdentityAlreadyExists
  = CloudFrontOriginAccessIdentityAlreadyExists { "Message" :: NullOrUndefined (String) }
```

<p>If the <code>CallerReference</code> is a value you already sent in a previous request to create an identity but the content of the <code>CloudFrontOriginAccessIdentityConfig</code> is different from the original request, CloudFront returns a <code>CloudFrontOriginAccessIdentityAlreadyExists</code> error. </p>

##### Instances
``` purescript
Newtype CloudFrontOriginAccessIdentityAlreadyExists _
Generic CloudFrontOriginAccessIdentityAlreadyExists _
Show CloudFrontOriginAccessIdentityAlreadyExists
Decode CloudFrontOriginAccessIdentityAlreadyExists
Encode CloudFrontOriginAccessIdentityAlreadyExists
```

#### `newCloudFrontOriginAccessIdentityAlreadyExists`

``` purescript
newCloudFrontOriginAccessIdentityAlreadyExists :: CloudFrontOriginAccessIdentityAlreadyExists
```

Constructs CloudFrontOriginAccessIdentityAlreadyExists from required parameters

#### `newCloudFrontOriginAccessIdentityAlreadyExists'`

``` purescript
newCloudFrontOriginAccessIdentityAlreadyExists' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> CloudFrontOriginAccessIdentityAlreadyExists
```

Constructs CloudFrontOriginAccessIdentityAlreadyExists's fields from required parameters

#### `CloudFrontOriginAccessIdentityConfig`

``` purescript
newtype CloudFrontOriginAccessIdentityConfig
  = CloudFrontOriginAccessIdentityConfig { "CallerReference" :: String, "Comment" :: String }
```

<p>Origin access identity configuration. Send a <code>GET</code> request to the <code>/<i>CloudFront API version</i>/CloudFront/identity ID/config</code> resource. </p>

##### Instances
``` purescript
Newtype CloudFrontOriginAccessIdentityConfig _
Generic CloudFrontOriginAccessIdentityConfig _
Show CloudFrontOriginAccessIdentityConfig
Decode CloudFrontOriginAccessIdentityConfig
Encode CloudFrontOriginAccessIdentityConfig
```

#### `newCloudFrontOriginAccessIdentityConfig`

``` purescript
newCloudFrontOriginAccessIdentityConfig :: String -> String -> CloudFrontOriginAccessIdentityConfig
```

Constructs CloudFrontOriginAccessIdentityConfig from required parameters

#### `newCloudFrontOriginAccessIdentityConfig'`

``` purescript
newCloudFrontOriginAccessIdentityConfig' :: String -> String -> ({ "CallerReference" :: String, "Comment" :: String } -> { "CallerReference" :: String, "Comment" :: String }) -> CloudFrontOriginAccessIdentityConfig
```

Constructs CloudFrontOriginAccessIdentityConfig's fields from required parameters

#### `CloudFrontOriginAccessIdentityInUse`

``` purescript
newtype CloudFrontOriginAccessIdentityInUse
  = CloudFrontOriginAccessIdentityInUse { "Message" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype CloudFrontOriginAccessIdentityInUse _
Generic CloudFrontOriginAccessIdentityInUse _
Show CloudFrontOriginAccessIdentityInUse
Decode CloudFrontOriginAccessIdentityInUse
Encode CloudFrontOriginAccessIdentityInUse
```

#### `newCloudFrontOriginAccessIdentityInUse`

``` purescript
newCloudFrontOriginAccessIdentityInUse :: CloudFrontOriginAccessIdentityInUse
```

Constructs CloudFrontOriginAccessIdentityInUse from required parameters

#### `newCloudFrontOriginAccessIdentityInUse'`

``` purescript
newCloudFrontOriginAccessIdentityInUse' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> CloudFrontOriginAccessIdentityInUse
```

Constructs CloudFrontOriginAccessIdentityInUse's fields from required parameters

#### `CloudFrontOriginAccessIdentityList`

``` purescript
newtype CloudFrontOriginAccessIdentityList
  = CloudFrontOriginAccessIdentityList { "Marker" :: String, "NextMarker" :: NullOrUndefined (String), "MaxItems" :: Int, "IsTruncated" :: Boolean, "Quantity" :: Int, "Items" :: NullOrUndefined (CloudFrontOriginAccessIdentitySummaryList) }
```

<p>Lists the origin access identities for CloudFront.Send a <code>GET</code> request to the <code>/<i>CloudFront API version</i>/origin-access-identity/cloudfront</code> resource. The response includes a <code>CloudFrontOriginAccessIdentityList</code> element with zero or more <code>CloudFrontOriginAccessIdentitySummary</code> child elements. By default, your entire list of origin access identities is returned in one single page. If the list is long, you can paginate it using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>

##### Instances
``` purescript
Newtype CloudFrontOriginAccessIdentityList _
Generic CloudFrontOriginAccessIdentityList _
Show CloudFrontOriginAccessIdentityList
Decode CloudFrontOriginAccessIdentityList
Encode CloudFrontOriginAccessIdentityList
```

#### `newCloudFrontOriginAccessIdentityList`

``` purescript
newCloudFrontOriginAccessIdentityList :: Boolean -> String -> Int -> Int -> CloudFrontOriginAccessIdentityList
```

Constructs CloudFrontOriginAccessIdentityList from required parameters

#### `newCloudFrontOriginAccessIdentityList'`

``` purescript
newCloudFrontOriginAccessIdentityList' :: Boolean -> String -> Int -> Int -> ({ "Marker" :: String, "NextMarker" :: NullOrUndefined (String), "MaxItems" :: Int, "IsTruncated" :: Boolean, "Quantity" :: Int, "Items" :: NullOrUndefined (CloudFrontOriginAccessIdentitySummaryList) } -> { "Marker" :: String, "NextMarker" :: NullOrUndefined (String), "MaxItems" :: Int, "IsTruncated" :: Boolean, "Quantity" :: Int, "Items" :: NullOrUndefined (CloudFrontOriginAccessIdentitySummaryList) }) -> CloudFrontOriginAccessIdentityList
```

Constructs CloudFrontOriginAccessIdentityList's fields from required parameters

#### `CloudFrontOriginAccessIdentitySummary`

``` purescript
newtype CloudFrontOriginAccessIdentitySummary
  = CloudFrontOriginAccessIdentitySummary { "Id" :: String, "S3CanonicalUserId" :: String, "Comment" :: String }
```

<p>Summary of the information about a CloudFront origin access identity.</p>

##### Instances
``` purescript
Newtype CloudFrontOriginAccessIdentitySummary _
Generic CloudFrontOriginAccessIdentitySummary _
Show CloudFrontOriginAccessIdentitySummary
Decode CloudFrontOriginAccessIdentitySummary
Encode CloudFrontOriginAccessIdentitySummary
```

#### `newCloudFrontOriginAccessIdentitySummary`

``` purescript
newCloudFrontOriginAccessIdentitySummary :: String -> String -> String -> CloudFrontOriginAccessIdentitySummary
```

Constructs CloudFrontOriginAccessIdentitySummary from required parameters

#### `newCloudFrontOriginAccessIdentitySummary'`

``` purescript
newCloudFrontOriginAccessIdentitySummary' :: String -> String -> String -> ({ "Id" :: String, "S3CanonicalUserId" :: String, "Comment" :: String } -> { "Id" :: String, "S3CanonicalUserId" :: String, "Comment" :: String }) -> CloudFrontOriginAccessIdentitySummary
```

Constructs CloudFrontOriginAccessIdentitySummary's fields from required parameters

#### `CloudFrontOriginAccessIdentitySummaryList`

``` purescript
newtype CloudFrontOriginAccessIdentitySummaryList
  = CloudFrontOriginAccessIdentitySummaryList (Array CloudFrontOriginAccessIdentitySummary)
```

##### Instances
``` purescript
Newtype CloudFrontOriginAccessIdentitySummaryList _
Generic CloudFrontOriginAccessIdentitySummaryList _
Show CloudFrontOriginAccessIdentitySummaryList
Decode CloudFrontOriginAccessIdentitySummaryList
Encode CloudFrontOriginAccessIdentitySummaryList
```

#### `CookieNameList`

``` purescript
newtype CookieNameList
  = CookieNameList (Array String)
```

##### Instances
``` purescript
Newtype CookieNameList _
Generic CookieNameList _
Show CookieNameList
Decode CookieNameList
Encode CookieNameList
```

#### `CookieNames`

``` purescript
newtype CookieNames
  = CookieNames { "Quantity" :: Int, "Items" :: NullOrUndefined (CookieNameList) }
```

<p>A complex type that specifies whether you want CloudFront to forward cookies to the origin and, if so, which ones. For more information about forwarding cookies to the origin, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Cookies.html">How CloudFront Forwards, Caches, and Logs Cookies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>

##### Instances
``` purescript
Newtype CookieNames _
Generic CookieNames _
Show CookieNames
Decode CookieNames
Encode CookieNames
```

#### `newCookieNames`

``` purescript
newCookieNames :: Int -> CookieNames
```

Constructs CookieNames from required parameters

#### `newCookieNames'`

``` purescript
newCookieNames' :: Int -> ({ "Quantity" :: Int, "Items" :: NullOrUndefined (CookieNameList) } -> { "Quantity" :: Int, "Items" :: NullOrUndefined (CookieNameList) }) -> CookieNames
```

Constructs CookieNames's fields from required parameters

#### `CookiePreference`

``` purescript
newtype CookiePreference
  = CookiePreference { "Forward" :: ItemSelection, "WhitelistedNames" :: NullOrUndefined (CookieNames) }
```

<p>A complex type that specifies whether you want CloudFront to forward cookies to the origin and, if so, which ones. For more information about forwarding cookies to the origin, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Cookies.html">How CloudFront Forwards, Caches, and Logs Cookies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>

##### Instances
``` purescript
Newtype CookiePreference _
Generic CookiePreference _
Show CookiePreference
Decode CookiePreference
Encode CookiePreference
```

#### `newCookiePreference`

``` purescript
newCookiePreference :: ItemSelection -> CookiePreference
```

Constructs CookiePreference from required parameters

#### `newCookiePreference'`

``` purescript
newCookiePreference' :: ItemSelection -> ({ "Forward" :: ItemSelection, "WhitelistedNames" :: NullOrUndefined (CookieNames) } -> { "Forward" :: ItemSelection, "WhitelistedNames" :: NullOrUndefined (CookieNames) }) -> CookiePreference
```

Constructs CookiePreference's fields from required parameters

#### `CreateCloudFrontOriginAccessIdentityRequest`

``` purescript
newtype CreateCloudFrontOriginAccessIdentityRequest
  = CreateCloudFrontOriginAccessIdentityRequest { "CloudFrontOriginAccessIdentityConfig" :: CloudFrontOriginAccessIdentityConfig }
```

<p>The request to create a new origin access identity.</p>

##### Instances
``` purescript
Newtype CreateCloudFrontOriginAccessIdentityRequest _
Generic CreateCloudFrontOriginAccessIdentityRequest _
Show CreateCloudFrontOriginAccessIdentityRequest
Decode CreateCloudFrontOriginAccessIdentityRequest
Encode CreateCloudFrontOriginAccessIdentityRequest
```

#### `newCreateCloudFrontOriginAccessIdentityRequest`

``` purescript
newCreateCloudFrontOriginAccessIdentityRequest :: CloudFrontOriginAccessIdentityConfig -> CreateCloudFrontOriginAccessIdentityRequest
```

Constructs CreateCloudFrontOriginAccessIdentityRequest from required parameters

#### `newCreateCloudFrontOriginAccessIdentityRequest'`

``` purescript
newCreateCloudFrontOriginAccessIdentityRequest' :: CloudFrontOriginAccessIdentityConfig -> ({ "CloudFrontOriginAccessIdentityConfig" :: CloudFrontOriginAccessIdentityConfig } -> { "CloudFrontOriginAccessIdentityConfig" :: CloudFrontOriginAccessIdentityConfig }) -> CreateCloudFrontOriginAccessIdentityRequest
```

Constructs CreateCloudFrontOriginAccessIdentityRequest's fields from required parameters

#### `CreateCloudFrontOriginAccessIdentityResult`

``` purescript
newtype CreateCloudFrontOriginAccessIdentityResult
  = CreateCloudFrontOriginAccessIdentityResult { "CloudFrontOriginAccessIdentity" :: NullOrUndefined (CloudFrontOriginAccessIdentity), "Location" :: NullOrUndefined (String), "ETag" :: NullOrUndefined (String) }
```

<p>The returned result of the corresponding request.</p>

##### Instances
``` purescript
Newtype CreateCloudFrontOriginAccessIdentityResult _
Generic CreateCloudFrontOriginAccessIdentityResult _
Show CreateCloudFrontOriginAccessIdentityResult
Decode CreateCloudFrontOriginAccessIdentityResult
Encode CreateCloudFrontOriginAccessIdentityResult
```

#### `newCreateCloudFrontOriginAccessIdentityResult`

``` purescript
newCreateCloudFrontOriginAccessIdentityResult :: CreateCloudFrontOriginAccessIdentityResult
```

Constructs CreateCloudFrontOriginAccessIdentityResult from required parameters

#### `newCreateCloudFrontOriginAccessIdentityResult'`

``` purescript
newCreateCloudFrontOriginAccessIdentityResult' :: ({ "CloudFrontOriginAccessIdentity" :: NullOrUndefined (CloudFrontOriginAccessIdentity), "Location" :: NullOrUndefined (String), "ETag" :: NullOrUndefined (String) } -> { "CloudFrontOriginAccessIdentity" :: NullOrUndefined (CloudFrontOriginAccessIdentity), "Location" :: NullOrUndefined (String), "ETag" :: NullOrUndefined (String) }) -> CreateCloudFrontOriginAccessIdentityResult
```

Constructs CreateCloudFrontOriginAccessIdentityResult's fields from required parameters

#### `CreateDistributionRequest`

``` purescript
newtype CreateDistributionRequest
  = CreateDistributionRequest { "DistributionConfig" :: DistributionConfig }
```

<p>The request to create a new distribution.</p>

##### Instances
``` purescript
Newtype CreateDistributionRequest _
Generic CreateDistributionRequest _
Show CreateDistributionRequest
Decode CreateDistributionRequest
Encode CreateDistributionRequest
```

#### `newCreateDistributionRequest`

``` purescript
newCreateDistributionRequest :: DistributionConfig -> CreateDistributionRequest
```

Constructs CreateDistributionRequest from required parameters

#### `newCreateDistributionRequest'`

``` purescript
newCreateDistributionRequest' :: DistributionConfig -> ({ "DistributionConfig" :: DistributionConfig } -> { "DistributionConfig" :: DistributionConfig }) -> CreateDistributionRequest
```

Constructs CreateDistributionRequest's fields from required parameters

#### `CreateDistributionResult`

``` purescript
newtype CreateDistributionResult
  = CreateDistributionResult { "Distribution" :: NullOrUndefined (Distribution), "Location" :: NullOrUndefined (String), "ETag" :: NullOrUndefined (String) }
```

<p>The returned result of the corresponding request.</p>

##### Instances
``` purescript
Newtype CreateDistributionResult _
Generic CreateDistributionResult _
Show CreateDistributionResult
Decode CreateDistributionResult
Encode CreateDistributionResult
```

#### `newCreateDistributionResult`

``` purescript
newCreateDistributionResult :: CreateDistributionResult
```

Constructs CreateDistributionResult from required parameters

#### `newCreateDistributionResult'`

``` purescript
newCreateDistributionResult' :: ({ "Distribution" :: NullOrUndefined (Distribution), "Location" :: NullOrUndefined (String), "ETag" :: NullOrUndefined (String) } -> { "Distribution" :: NullOrUndefined (Distribution), "Location" :: NullOrUndefined (String), "ETag" :: NullOrUndefined (String) }) -> CreateDistributionResult
```

Constructs CreateDistributionResult's fields from required parameters

#### `CreateDistributionWithTagsRequest`

``` purescript
newtype CreateDistributionWithTagsRequest
  = CreateDistributionWithTagsRequest { "DistributionConfigWithTags" :: DistributionConfigWithTags }
```

<p>The request to create a new distribution with tags. </p>

##### Instances
``` purescript
Newtype CreateDistributionWithTagsRequest _
Generic CreateDistributionWithTagsRequest _
Show CreateDistributionWithTagsRequest
Decode CreateDistributionWithTagsRequest
Encode CreateDistributionWithTagsRequest
```

#### `newCreateDistributionWithTagsRequest`

``` purescript
newCreateDistributionWithTagsRequest :: DistributionConfigWithTags -> CreateDistributionWithTagsRequest
```

Constructs CreateDistributionWithTagsRequest from required parameters

#### `newCreateDistributionWithTagsRequest'`

``` purescript
newCreateDistributionWithTagsRequest' :: DistributionConfigWithTags -> ({ "DistributionConfigWithTags" :: DistributionConfigWithTags } -> { "DistributionConfigWithTags" :: DistributionConfigWithTags }) -> CreateDistributionWithTagsRequest
```

Constructs CreateDistributionWithTagsRequest's fields from required parameters

#### `CreateDistributionWithTagsResult`

``` purescript
newtype CreateDistributionWithTagsResult
  = CreateDistributionWithTagsResult { "Distribution" :: NullOrUndefined (Distribution), "Location" :: NullOrUndefined (String), "ETag" :: NullOrUndefined (String) }
```

<p>The returned result of the corresponding request. </p>

##### Instances
``` purescript
Newtype CreateDistributionWithTagsResult _
Generic CreateDistributionWithTagsResult _
Show CreateDistributionWithTagsResult
Decode CreateDistributionWithTagsResult
Encode CreateDistributionWithTagsResult
```

#### `newCreateDistributionWithTagsResult`

``` purescript
newCreateDistributionWithTagsResult :: CreateDistributionWithTagsResult
```

Constructs CreateDistributionWithTagsResult from required parameters

#### `newCreateDistributionWithTagsResult'`

``` purescript
newCreateDistributionWithTagsResult' :: ({ "Distribution" :: NullOrUndefined (Distribution), "Location" :: NullOrUndefined (String), "ETag" :: NullOrUndefined (String) } -> { "Distribution" :: NullOrUndefined (Distribution), "Location" :: NullOrUndefined (String), "ETag" :: NullOrUndefined (String) }) -> CreateDistributionWithTagsResult
```

Constructs CreateDistributionWithTagsResult's fields from required parameters

#### `CreateInvalidationRequest`

``` purescript
newtype CreateInvalidationRequest
  = CreateInvalidationRequest { "DistributionId" :: String, "InvalidationBatch" :: InvalidationBatch }
```

<p>The request to create an invalidation.</p>

##### Instances
``` purescript
Newtype CreateInvalidationRequest _
Generic CreateInvalidationRequest _
Show CreateInvalidationRequest
Decode CreateInvalidationRequest
Encode CreateInvalidationRequest
```

#### `newCreateInvalidationRequest`

``` purescript
newCreateInvalidationRequest :: String -> InvalidationBatch -> CreateInvalidationRequest
```

Constructs CreateInvalidationRequest from required parameters

#### `newCreateInvalidationRequest'`

``` purescript
newCreateInvalidationRequest' :: String -> InvalidationBatch -> ({ "DistributionId" :: String, "InvalidationBatch" :: InvalidationBatch } -> { "DistributionId" :: String, "InvalidationBatch" :: InvalidationBatch }) -> CreateInvalidationRequest
```

Constructs CreateInvalidationRequest's fields from required parameters

#### `CreateInvalidationResult`

``` purescript
newtype CreateInvalidationResult
  = CreateInvalidationResult { "Location" :: NullOrUndefined (String), "Invalidation" :: NullOrUndefined (Invalidation) }
```

<p>The returned result of the corresponding request.</p>

##### Instances
``` purescript
Newtype CreateInvalidationResult _
Generic CreateInvalidationResult _
Show CreateInvalidationResult
Decode CreateInvalidationResult
Encode CreateInvalidationResult
```

#### `newCreateInvalidationResult`

``` purescript
newCreateInvalidationResult :: CreateInvalidationResult
```

Constructs CreateInvalidationResult from required parameters

#### `newCreateInvalidationResult'`

``` purescript
newCreateInvalidationResult' :: ({ "Location" :: NullOrUndefined (String), "Invalidation" :: NullOrUndefined (Invalidation) } -> { "Location" :: NullOrUndefined (String), "Invalidation" :: NullOrUndefined (Invalidation) }) -> CreateInvalidationResult
```

Constructs CreateInvalidationResult's fields from required parameters

#### `CreateStreamingDistributionRequest`

``` purescript
newtype CreateStreamingDistributionRequest
  = CreateStreamingDistributionRequest { "StreamingDistributionConfig" :: StreamingDistributionConfig }
```

<p>The request to create a new streaming distribution.</p>

##### Instances
``` purescript
Newtype CreateStreamingDistributionRequest _
Generic CreateStreamingDistributionRequest _
Show CreateStreamingDistributionRequest
Decode CreateStreamingDistributionRequest
Encode CreateStreamingDistributionRequest
```

#### `newCreateStreamingDistributionRequest`

``` purescript
newCreateStreamingDistributionRequest :: StreamingDistributionConfig -> CreateStreamingDistributionRequest
```

Constructs CreateStreamingDistributionRequest from required parameters

#### `newCreateStreamingDistributionRequest'`

``` purescript
newCreateStreamingDistributionRequest' :: StreamingDistributionConfig -> ({ "StreamingDistributionConfig" :: StreamingDistributionConfig } -> { "StreamingDistributionConfig" :: StreamingDistributionConfig }) -> CreateStreamingDistributionRequest
```

Constructs CreateStreamingDistributionRequest's fields from required parameters

#### `CreateStreamingDistributionResult`

``` purescript
newtype CreateStreamingDistributionResult
  = CreateStreamingDistributionResult { "StreamingDistribution" :: NullOrUndefined (StreamingDistribution), "Location" :: NullOrUndefined (String), "ETag" :: NullOrUndefined (String) }
```

<p>The returned result of the corresponding request.</p>

##### Instances
``` purescript
Newtype CreateStreamingDistributionResult _
Generic CreateStreamingDistributionResult _
Show CreateStreamingDistributionResult
Decode CreateStreamingDistributionResult
Encode CreateStreamingDistributionResult
```

#### `newCreateStreamingDistributionResult`

``` purescript
newCreateStreamingDistributionResult :: CreateStreamingDistributionResult
```

Constructs CreateStreamingDistributionResult from required parameters

#### `newCreateStreamingDistributionResult'`

``` purescript
newCreateStreamingDistributionResult' :: ({ "StreamingDistribution" :: NullOrUndefined (StreamingDistribution), "Location" :: NullOrUndefined (String), "ETag" :: NullOrUndefined (String) } -> { "StreamingDistribution" :: NullOrUndefined (StreamingDistribution), "Location" :: NullOrUndefined (String), "ETag" :: NullOrUndefined (String) }) -> CreateStreamingDistributionResult
```

Constructs CreateStreamingDistributionResult's fields from required parameters

#### `CreateStreamingDistributionWithTagsRequest`

``` purescript
newtype CreateStreamingDistributionWithTagsRequest
  = CreateStreamingDistributionWithTagsRequest { "StreamingDistributionConfigWithTags" :: StreamingDistributionConfigWithTags }
```

<p>The request to create a new streaming distribution with tags.</p>

##### Instances
``` purescript
Newtype CreateStreamingDistributionWithTagsRequest _
Generic CreateStreamingDistributionWithTagsRequest _
Show CreateStreamingDistributionWithTagsRequest
Decode CreateStreamingDistributionWithTagsRequest
Encode CreateStreamingDistributionWithTagsRequest
```

#### `newCreateStreamingDistributionWithTagsRequest`

``` purescript
newCreateStreamingDistributionWithTagsRequest :: StreamingDistributionConfigWithTags -> CreateStreamingDistributionWithTagsRequest
```

Constructs CreateStreamingDistributionWithTagsRequest from required parameters

#### `newCreateStreamingDistributionWithTagsRequest'`

``` purescript
newCreateStreamingDistributionWithTagsRequest' :: StreamingDistributionConfigWithTags -> ({ "StreamingDistributionConfigWithTags" :: StreamingDistributionConfigWithTags } -> { "StreamingDistributionConfigWithTags" :: StreamingDistributionConfigWithTags }) -> CreateStreamingDistributionWithTagsRequest
```

Constructs CreateStreamingDistributionWithTagsRequest's fields from required parameters

#### `CreateStreamingDistributionWithTagsResult`

``` purescript
newtype CreateStreamingDistributionWithTagsResult
  = CreateStreamingDistributionWithTagsResult { "StreamingDistribution" :: NullOrUndefined (StreamingDistribution), "Location" :: NullOrUndefined (String), "ETag" :: NullOrUndefined (String) }
```

<p>The returned result of the corresponding request. </p>

##### Instances
``` purescript
Newtype CreateStreamingDistributionWithTagsResult _
Generic CreateStreamingDistributionWithTagsResult _
Show CreateStreamingDistributionWithTagsResult
Decode CreateStreamingDistributionWithTagsResult
Encode CreateStreamingDistributionWithTagsResult
```

#### `newCreateStreamingDistributionWithTagsResult`

``` purescript
newCreateStreamingDistributionWithTagsResult :: CreateStreamingDistributionWithTagsResult
```

Constructs CreateStreamingDistributionWithTagsResult from required parameters

#### `newCreateStreamingDistributionWithTagsResult'`

``` purescript
newCreateStreamingDistributionWithTagsResult' :: ({ "StreamingDistribution" :: NullOrUndefined (StreamingDistribution), "Location" :: NullOrUndefined (String), "ETag" :: NullOrUndefined (String) } -> { "StreamingDistribution" :: NullOrUndefined (StreamingDistribution), "Location" :: NullOrUndefined (String), "ETag" :: NullOrUndefined (String) }) -> CreateStreamingDistributionWithTagsResult
```

Constructs CreateStreamingDistributionWithTagsResult's fields from required parameters

#### `CustomErrorResponse`

``` purescript
newtype CustomErrorResponse
  = CustomErrorResponse { "ErrorCode" :: Int, "ResponsePagePath" :: NullOrUndefined (String), "ResponseCode" :: NullOrUndefined (String), "ErrorCachingMinTTL" :: NullOrUndefined (Number) }
```

<p>A complex type that controls:</p> <ul> <li> <p>Whether CloudFront replaces HTTP status codes in the 4xx and 5xx range with custom error messages before returning the response to the viewer. </p> </li> <li> <p>How long CloudFront caches HTTP status codes in the 4xx and 5xx range.</p> </li> </ul> <p>For more information about custom error pages, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html">Customizing Error Responses</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>

##### Instances
``` purescript
Newtype CustomErrorResponse _
Generic CustomErrorResponse _
Show CustomErrorResponse
Decode CustomErrorResponse
Encode CustomErrorResponse
```

#### `newCustomErrorResponse`

``` purescript
newCustomErrorResponse :: Int -> CustomErrorResponse
```

Constructs CustomErrorResponse from required parameters

#### `newCustomErrorResponse'`

``` purescript
newCustomErrorResponse' :: Int -> ({ "ErrorCode" :: Int, "ResponsePagePath" :: NullOrUndefined (String), "ResponseCode" :: NullOrUndefined (String), "ErrorCachingMinTTL" :: NullOrUndefined (Number) } -> { "ErrorCode" :: Int, "ResponsePagePath" :: NullOrUndefined (String), "ResponseCode" :: NullOrUndefined (String), "ErrorCachingMinTTL" :: NullOrUndefined (Number) }) -> CustomErrorResponse
```

Constructs CustomErrorResponse's fields from required parameters

#### `CustomErrorResponseList`

``` purescript
newtype CustomErrorResponseList
  = CustomErrorResponseList (Array CustomErrorResponse)
```

##### Instances
``` purescript
Newtype CustomErrorResponseList _
Generic CustomErrorResponseList _
Show CustomErrorResponseList
Decode CustomErrorResponseList
Encode CustomErrorResponseList
```

#### `CustomErrorResponses`

``` purescript
newtype CustomErrorResponses
  = CustomErrorResponses { "Quantity" :: Int, "Items" :: NullOrUndefined (CustomErrorResponseList) }
```

<p>A complex type that controls:</p> <ul> <li> <p>Whether CloudFront replaces HTTP status codes in the 4xx and 5xx range with custom error messages before returning the response to the viewer.</p> </li> <li> <p>How long CloudFront caches HTTP status codes in the 4xx and 5xx range.</p> </li> </ul> <p>For more information about custom error pages, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html">Customizing Error Responses</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>

##### Instances
``` purescript
Newtype CustomErrorResponses _
Generic CustomErrorResponses _
Show CustomErrorResponses
Decode CustomErrorResponses
Encode CustomErrorResponses
```

#### `newCustomErrorResponses`

``` purescript
newCustomErrorResponses :: Int -> CustomErrorResponses
```

Constructs CustomErrorResponses from required parameters

#### `newCustomErrorResponses'`

``` purescript
newCustomErrorResponses' :: Int -> ({ "Quantity" :: Int, "Items" :: NullOrUndefined (CustomErrorResponseList) } -> { "Quantity" :: Int, "Items" :: NullOrUndefined (CustomErrorResponseList) }) -> CustomErrorResponses
```

Constructs CustomErrorResponses's fields from required parameters

#### `CustomHeaders`

``` purescript
newtype CustomHeaders
  = CustomHeaders { "Quantity" :: Int, "Items" :: NullOrUndefined (OriginCustomHeadersList) }
```

<p>A complex type that contains the list of Custom Headers for each origin. </p>

##### Instances
``` purescript
Newtype CustomHeaders _
Generic CustomHeaders _
Show CustomHeaders
Decode CustomHeaders
Encode CustomHeaders
```

#### `newCustomHeaders`

``` purescript
newCustomHeaders :: Int -> CustomHeaders
```

Constructs CustomHeaders from required parameters

#### `newCustomHeaders'`

``` purescript
newCustomHeaders' :: Int -> ({ "Quantity" :: Int, "Items" :: NullOrUndefined (OriginCustomHeadersList) } -> { "Quantity" :: Int, "Items" :: NullOrUndefined (OriginCustomHeadersList) }) -> CustomHeaders
```

Constructs CustomHeaders's fields from required parameters

#### `CustomOriginConfig`

``` purescript
newtype CustomOriginConfig
  = CustomOriginConfig { "HTTPPort" :: Int, "HTTPSPort" :: Int, "OriginProtocolPolicy" :: OriginProtocolPolicy, "OriginSslProtocols" :: NullOrUndefined (OriginSslProtocols) }
```

<p>A customer origin.</p>

##### Instances
``` purescript
Newtype CustomOriginConfig _
Generic CustomOriginConfig _
Show CustomOriginConfig
Decode CustomOriginConfig
Encode CustomOriginConfig
```

#### `newCustomOriginConfig`

``` purescript
newCustomOriginConfig :: Int -> Int -> OriginProtocolPolicy -> CustomOriginConfig
```

Constructs CustomOriginConfig from required parameters

#### `newCustomOriginConfig'`

``` purescript
newCustomOriginConfig' :: Int -> Int -> OriginProtocolPolicy -> ({ "HTTPPort" :: Int, "HTTPSPort" :: Int, "OriginProtocolPolicy" :: OriginProtocolPolicy, "OriginSslProtocols" :: NullOrUndefined (OriginSslProtocols) } -> { "HTTPPort" :: Int, "HTTPSPort" :: Int, "OriginProtocolPolicy" :: OriginProtocolPolicy, "OriginSslProtocols" :: NullOrUndefined (OriginSslProtocols) }) -> CustomOriginConfig
```

Constructs CustomOriginConfig's fields from required parameters

#### `DefaultCacheBehavior`

``` purescript
newtype DefaultCacheBehavior
  = DefaultCacheBehavior { "TargetOriginId" :: String, "ForwardedValues" :: ForwardedValues, "TrustedSigners" :: TrustedSigners, "ViewerProtocolPolicy" :: ViewerProtocolPolicy, "MinTTL" :: Number, "AllowedMethods" :: NullOrUndefined (AllowedMethods), "SmoothStreaming" :: NullOrUndefined (Boolean), "DefaultTTL" :: NullOrUndefined (Number), "MaxTTL" :: NullOrUndefined (Number), "Compress" :: NullOrUndefined (Boolean), "LambdaFunctionAssociations" :: NullOrUndefined (LambdaFunctionAssociations) }
```

<p>A complex type that describes the default cache behavior if you do not specify a <code>CacheBehavior</code> element or if files don't match any of the values of <code>PathPattern</code> in <code>CacheBehavior</code> elements. You must create exactly one default cache behavior.</p>

##### Instances
``` purescript
Newtype DefaultCacheBehavior _
Generic DefaultCacheBehavior _
Show DefaultCacheBehavior
Decode DefaultCacheBehavior
Encode DefaultCacheBehavior
```

#### `newDefaultCacheBehavior`

``` purescript
newDefaultCacheBehavior :: ForwardedValues -> Number -> String -> TrustedSigners -> ViewerProtocolPolicy -> DefaultCacheBehavior
```

Constructs DefaultCacheBehavior from required parameters

#### `newDefaultCacheBehavior'`

``` purescript
newDefaultCacheBehavior' :: ForwardedValues -> Number -> String -> TrustedSigners -> ViewerProtocolPolicy -> ({ "TargetOriginId" :: String, "ForwardedValues" :: ForwardedValues, "TrustedSigners" :: TrustedSigners, "ViewerProtocolPolicy" :: ViewerProtocolPolicy, "MinTTL" :: Number, "AllowedMethods" :: NullOrUndefined (AllowedMethods), "SmoothStreaming" :: NullOrUndefined (Boolean), "DefaultTTL" :: NullOrUndefined (Number), "MaxTTL" :: NullOrUndefined (Number), "Compress" :: NullOrUndefined (Boolean), "LambdaFunctionAssociations" :: NullOrUndefined (LambdaFunctionAssociations) } -> { "TargetOriginId" :: String, "ForwardedValues" :: ForwardedValues, "TrustedSigners" :: TrustedSigners, "ViewerProtocolPolicy" :: ViewerProtocolPolicy, "MinTTL" :: Number, "AllowedMethods" :: NullOrUndefined (AllowedMethods), "SmoothStreaming" :: NullOrUndefined (Boolean), "DefaultTTL" :: NullOrUndefined (Number), "MaxTTL" :: NullOrUndefined (Number), "Compress" :: NullOrUndefined (Boolean), "LambdaFunctionAssociations" :: NullOrUndefined (LambdaFunctionAssociations) }) -> DefaultCacheBehavior
```

Constructs DefaultCacheBehavior's fields from required parameters

#### `DeleteCloudFrontOriginAccessIdentityRequest`

``` purescript
newtype DeleteCloudFrontOriginAccessIdentityRequest
  = DeleteCloudFrontOriginAccessIdentityRequest { "Id" :: String, "IfMatch" :: NullOrUndefined (String) }
```

<p>Deletes a origin access identity.</p>

##### Instances
``` purescript
Newtype DeleteCloudFrontOriginAccessIdentityRequest _
Generic DeleteCloudFrontOriginAccessIdentityRequest _
Show DeleteCloudFrontOriginAccessIdentityRequest
Decode DeleteCloudFrontOriginAccessIdentityRequest
Encode DeleteCloudFrontOriginAccessIdentityRequest
```

#### `newDeleteCloudFrontOriginAccessIdentityRequest`

``` purescript
newDeleteCloudFrontOriginAccessIdentityRequest :: String -> DeleteCloudFrontOriginAccessIdentityRequest
```

Constructs DeleteCloudFrontOriginAccessIdentityRequest from required parameters

#### `newDeleteCloudFrontOriginAccessIdentityRequest'`

``` purescript
newDeleteCloudFrontOriginAccessIdentityRequest' :: String -> ({ "Id" :: String, "IfMatch" :: NullOrUndefined (String) } -> { "Id" :: String, "IfMatch" :: NullOrUndefined (String) }) -> DeleteCloudFrontOriginAccessIdentityRequest
```

Constructs DeleteCloudFrontOriginAccessIdentityRequest's fields from required parameters

#### `DeleteDistributionRequest`

``` purescript
newtype DeleteDistributionRequest
  = DeleteDistributionRequest { "Id" :: String, "IfMatch" :: NullOrUndefined (String) }
```

<p>This action deletes a web distribution. To delete a web distribution using the CloudFront API, perform the following steps.</p> <p> <b>To delete a web distribution using the CloudFront API:</b> </p> <ol> <li> <p>Disable the web distribution </p> </li> <li> <p>Submit a <code>GET Distribution Config</code> request to get the current configuration and the <code>Etag</code> header for the distribution.</p> </li> <li> <p>Update the XML document that was returned in the response to your <code>GET Distribution Config</code> request to change the value of <code>Enabled</code> to <code>false</code>.</p> </li> <li> <p>Submit a <code>PUT Distribution Config</code> request to update the configuration for your distribution. In the request body, include the XML document that you updated in Step 3. Set the value of the HTTP <code>If-Match</code> header to the value of the <code>ETag</code> header that CloudFront returned when you submitted the <code>GET Distribution Config</code> request in Step 2.</p> </li> <li> <p>Review the response to the <code>PUT Distribution Config</code> request to confirm that the distribution was successfully disabled.</p> </li> <li> <p>Submit a <code>GET Distribution</code> request to confirm that your changes have propagated. When propagation is complete, the value of <code>Status</code> is <code>Deployed</code>.</p> </li> <li> <p>Submit a <code>DELETE Distribution</code> request. Set the value of the HTTP <code>If-Match</code> header to the value of the <code>ETag</code> header that CloudFront returned when you submitted the <code>GET Distribution Config</code> request in Step 6.</p> </li> <li> <p>Review the response to your <code>DELETE Distribution</code> request to confirm that the distribution was successfully deleted.</p> </li> </ol> <p>For information about deleting a distribution using the CloudFront console, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/HowToDeleteDistribution.html">Deleting a Distribution</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>

##### Instances
``` purescript
Newtype DeleteDistributionRequest _
Generic DeleteDistributionRequest _
Show DeleteDistributionRequest
Decode DeleteDistributionRequest
Encode DeleteDistributionRequest
```

#### `newDeleteDistributionRequest`

``` purescript
newDeleteDistributionRequest :: String -> DeleteDistributionRequest
```

Constructs DeleteDistributionRequest from required parameters

#### `newDeleteDistributionRequest'`

``` purescript
newDeleteDistributionRequest' :: String -> ({ "Id" :: String, "IfMatch" :: NullOrUndefined (String) } -> { "Id" :: String, "IfMatch" :: NullOrUndefined (String) }) -> DeleteDistributionRequest
```

Constructs DeleteDistributionRequest's fields from required parameters

#### `DeleteStreamingDistributionRequest`

``` purescript
newtype DeleteStreamingDistributionRequest
  = DeleteStreamingDistributionRequest { "Id" :: String, "IfMatch" :: NullOrUndefined (String) }
```

<p>The request to delete a streaming distribution.</p>

##### Instances
``` purescript
Newtype DeleteStreamingDistributionRequest _
Generic DeleteStreamingDistributionRequest _
Show DeleteStreamingDistributionRequest
Decode DeleteStreamingDistributionRequest
Encode DeleteStreamingDistributionRequest
```

#### `newDeleteStreamingDistributionRequest`

``` purescript
newDeleteStreamingDistributionRequest :: String -> DeleteStreamingDistributionRequest
```

Constructs DeleteStreamingDistributionRequest from required parameters

#### `newDeleteStreamingDistributionRequest'`

``` purescript
newDeleteStreamingDistributionRequest' :: String -> ({ "Id" :: String, "IfMatch" :: NullOrUndefined (String) } -> { "Id" :: String, "IfMatch" :: NullOrUndefined (String) }) -> DeleteStreamingDistributionRequest
```

Constructs DeleteStreamingDistributionRequest's fields from required parameters

#### `Distribution`

``` purescript
newtype Distribution
  = Distribution { "Id" :: String, "ARN" :: String, "Status" :: String, "LastModifiedTime" :: Timestamp, "InProgressInvalidationBatches" :: Int, "DomainName" :: String, "ActiveTrustedSigners" :: ActiveTrustedSigners, "DistributionConfig" :: DistributionConfig }
```

<p>The distribution's information.</p>

##### Instances
``` purescript
Newtype Distribution _
Generic Distribution _
Show Distribution
Decode Distribution
Encode Distribution
```

#### `newDistribution`

``` purescript
newDistribution :: String -> ActiveTrustedSigners -> DistributionConfig -> String -> String -> Int -> Timestamp -> String -> Distribution
```

Constructs Distribution from required parameters

#### `newDistribution'`

``` purescript
newDistribution' :: String -> ActiveTrustedSigners -> DistributionConfig -> String -> String -> Int -> Timestamp -> String -> ({ "Id" :: String, "ARN" :: String, "Status" :: String, "LastModifiedTime" :: Timestamp, "InProgressInvalidationBatches" :: Int, "DomainName" :: String, "ActiveTrustedSigners" :: ActiveTrustedSigners, "DistributionConfig" :: DistributionConfig } -> { "Id" :: String, "ARN" :: String, "Status" :: String, "LastModifiedTime" :: Timestamp, "InProgressInvalidationBatches" :: Int, "DomainName" :: String, "ActiveTrustedSigners" :: ActiveTrustedSigners, "DistributionConfig" :: DistributionConfig }) -> Distribution
```

Constructs Distribution's fields from required parameters

#### `DistributionAlreadyExists`

``` purescript
newtype DistributionAlreadyExists
  = DistributionAlreadyExists { "Message" :: NullOrUndefined (String) }
```

<p>The caller reference you attempted to create the distribution with is associated with another distribution.</p>

##### Instances
``` purescript
Newtype DistributionAlreadyExists _
Generic DistributionAlreadyExists _
Show DistributionAlreadyExists
Decode DistributionAlreadyExists
Encode DistributionAlreadyExists
```

#### `newDistributionAlreadyExists`

``` purescript
newDistributionAlreadyExists :: DistributionAlreadyExists
```

Constructs DistributionAlreadyExists from required parameters

#### `newDistributionAlreadyExists'`

``` purescript
newDistributionAlreadyExists' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> DistributionAlreadyExists
```

Constructs DistributionAlreadyExists's fields from required parameters

#### `DistributionConfig`

``` purescript
newtype DistributionConfig
  = DistributionConfig { "CallerReference" :: String, "Aliases" :: NullOrUndefined (Aliases), "DefaultRootObject" :: NullOrUndefined (String), "Origins" :: Origins, "DefaultCacheBehavior" :: DefaultCacheBehavior, "CacheBehaviors" :: NullOrUndefined (CacheBehaviors), "CustomErrorResponses" :: NullOrUndefined (CustomErrorResponses), "Comment" :: String, "Logging" :: NullOrUndefined (LoggingConfig), "PriceClass" :: NullOrUndefined (PriceClass), "Enabled" :: Boolean, "ViewerCertificate" :: NullOrUndefined (ViewerCertificate), "Restrictions" :: NullOrUndefined (Restrictions), "WebACLId" :: NullOrUndefined (String), "HttpVersion" :: NullOrUndefined (HttpVersion), "IsIPV6Enabled" :: NullOrUndefined (Boolean) }
```

<p>A distribution configuration.</p>

##### Instances
``` purescript
Newtype DistributionConfig _
Generic DistributionConfig _
Show DistributionConfig
Decode DistributionConfig
Encode DistributionConfig
```

#### `newDistributionConfig`

``` purescript
newDistributionConfig :: String -> String -> DefaultCacheBehavior -> Boolean -> Origins -> DistributionConfig
```

Constructs DistributionConfig from required parameters

#### `newDistributionConfig'`

``` purescript
newDistributionConfig' :: String -> String -> DefaultCacheBehavior -> Boolean -> Origins -> ({ "CallerReference" :: String, "Aliases" :: NullOrUndefined (Aliases), "DefaultRootObject" :: NullOrUndefined (String), "Origins" :: Origins, "DefaultCacheBehavior" :: DefaultCacheBehavior, "CacheBehaviors" :: NullOrUndefined (CacheBehaviors), "CustomErrorResponses" :: NullOrUndefined (CustomErrorResponses), "Comment" :: String, "Logging" :: NullOrUndefined (LoggingConfig), "PriceClass" :: NullOrUndefined (PriceClass), "Enabled" :: Boolean, "ViewerCertificate" :: NullOrUndefined (ViewerCertificate), "Restrictions" :: NullOrUndefined (Restrictions), "WebACLId" :: NullOrUndefined (String), "HttpVersion" :: NullOrUndefined (HttpVersion), "IsIPV6Enabled" :: NullOrUndefined (Boolean) } -> { "CallerReference" :: String, "Aliases" :: NullOrUndefined (Aliases), "DefaultRootObject" :: NullOrUndefined (String), "Origins" :: Origins, "DefaultCacheBehavior" :: DefaultCacheBehavior, "CacheBehaviors" :: NullOrUndefined (CacheBehaviors), "CustomErrorResponses" :: NullOrUndefined (CustomErrorResponses), "Comment" :: String, "Logging" :: NullOrUndefined (LoggingConfig), "PriceClass" :: NullOrUndefined (PriceClass), "Enabled" :: Boolean, "ViewerCertificate" :: NullOrUndefined (ViewerCertificate), "Restrictions" :: NullOrUndefined (Restrictions), "WebACLId" :: NullOrUndefined (String), "HttpVersion" :: NullOrUndefined (HttpVersion), "IsIPV6Enabled" :: NullOrUndefined (Boolean) }) -> DistributionConfig
```

Constructs DistributionConfig's fields from required parameters

#### `DistributionConfigWithTags`

``` purescript
newtype DistributionConfigWithTags
  = DistributionConfigWithTags { "DistributionConfig" :: DistributionConfig, "Tags" :: Tags }
```

<p>A distribution Configuration and a list of tags to be associated with the distribution.</p>

##### Instances
``` purescript
Newtype DistributionConfigWithTags _
Generic DistributionConfigWithTags _
Show DistributionConfigWithTags
Decode DistributionConfigWithTags
Encode DistributionConfigWithTags
```

#### `newDistributionConfigWithTags`

``` purescript
newDistributionConfigWithTags :: DistributionConfig -> Tags -> DistributionConfigWithTags
```

Constructs DistributionConfigWithTags from required parameters

#### `newDistributionConfigWithTags'`

``` purescript
newDistributionConfigWithTags' :: DistributionConfig -> Tags -> ({ "DistributionConfig" :: DistributionConfig, "Tags" :: Tags } -> { "DistributionConfig" :: DistributionConfig, "Tags" :: Tags }) -> DistributionConfigWithTags
```

Constructs DistributionConfigWithTags's fields from required parameters

#### `DistributionList`

``` purescript
newtype DistributionList
  = DistributionList { "Marker" :: String, "NextMarker" :: NullOrUndefined (String), "MaxItems" :: Int, "IsTruncated" :: Boolean, "Quantity" :: Int, "Items" :: NullOrUndefined (DistributionSummaryList) }
```

<p>A distribution list.</p>

##### Instances
``` purescript
Newtype DistributionList _
Generic DistributionList _
Show DistributionList
Decode DistributionList
Encode DistributionList
```

#### `newDistributionList`

``` purescript
newDistributionList :: Boolean -> String -> Int -> Int -> DistributionList
```

Constructs DistributionList from required parameters

#### `newDistributionList'`

``` purescript
newDistributionList' :: Boolean -> String -> Int -> Int -> ({ "Marker" :: String, "NextMarker" :: NullOrUndefined (String), "MaxItems" :: Int, "IsTruncated" :: Boolean, "Quantity" :: Int, "Items" :: NullOrUndefined (DistributionSummaryList) } -> { "Marker" :: String, "NextMarker" :: NullOrUndefined (String), "MaxItems" :: Int, "IsTruncated" :: Boolean, "Quantity" :: Int, "Items" :: NullOrUndefined (DistributionSummaryList) }) -> DistributionList
```

Constructs DistributionList's fields from required parameters

#### `DistributionNotDisabled`

``` purescript
newtype DistributionNotDisabled
  = DistributionNotDisabled { "Message" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype DistributionNotDisabled _
Generic DistributionNotDisabled _
Show DistributionNotDisabled
Decode DistributionNotDisabled
Encode DistributionNotDisabled
```

#### `newDistributionNotDisabled`

``` purescript
newDistributionNotDisabled :: DistributionNotDisabled
```

Constructs DistributionNotDisabled from required parameters

#### `newDistributionNotDisabled'`

``` purescript
newDistributionNotDisabled' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> DistributionNotDisabled
```

Constructs DistributionNotDisabled's fields from required parameters

#### `DistributionSummary`

``` purescript
newtype DistributionSummary
  = DistributionSummary { "Id" :: String, "ARN" :: String, "Status" :: String, "LastModifiedTime" :: Timestamp, "DomainName" :: String, "Aliases" :: Aliases, "Origins" :: Origins, "DefaultCacheBehavior" :: DefaultCacheBehavior, "CacheBehaviors" :: CacheBehaviors, "CustomErrorResponses" :: CustomErrorResponses, "Comment" :: String, "PriceClass" :: PriceClass, "Enabled" :: Boolean, "ViewerCertificate" :: ViewerCertificate, "Restrictions" :: Restrictions, "WebACLId" :: String, "HttpVersion" :: HttpVersion, "IsIPV6Enabled" :: Boolean }
```

<p>A summary of the information about a CloudFront distribution.</p>

##### Instances
``` purescript
Newtype DistributionSummary _
Generic DistributionSummary _
Show DistributionSummary
Decode DistributionSummary
Encode DistributionSummary
```

#### `newDistributionSummary`

``` purescript
newDistributionSummary :: String -> Aliases -> CacheBehaviors -> String -> CustomErrorResponses -> DefaultCacheBehavior -> String -> Boolean -> HttpVersion -> String -> Boolean -> Timestamp -> Origins -> PriceClass -> Restrictions -> String -> ViewerCertificate -> String -> DistributionSummary
```

Constructs DistributionSummary from required parameters

#### `newDistributionSummary'`

``` purescript
newDistributionSummary' :: String -> Aliases -> CacheBehaviors -> String -> CustomErrorResponses -> DefaultCacheBehavior -> String -> Boolean -> HttpVersion -> String -> Boolean -> Timestamp -> Origins -> PriceClass -> Restrictions -> String -> ViewerCertificate -> String -> ({ "Id" :: String, "ARN" :: String, "Status" :: String, "LastModifiedTime" :: Timestamp, "DomainName" :: String, "Aliases" :: Aliases, "Origins" :: Origins, "DefaultCacheBehavior" :: DefaultCacheBehavior, "CacheBehaviors" :: CacheBehaviors, "CustomErrorResponses" :: CustomErrorResponses, "Comment" :: String, "PriceClass" :: PriceClass, "Enabled" :: Boolean, "ViewerCertificate" :: ViewerCertificate, "Restrictions" :: Restrictions, "WebACLId" :: String, "HttpVersion" :: HttpVersion, "IsIPV6Enabled" :: Boolean } -> { "Id" :: String, "ARN" :: String, "Status" :: String, "LastModifiedTime" :: Timestamp, "DomainName" :: String, "Aliases" :: Aliases, "Origins" :: Origins, "DefaultCacheBehavior" :: DefaultCacheBehavior, "CacheBehaviors" :: CacheBehaviors, "CustomErrorResponses" :: CustomErrorResponses, "Comment" :: String, "PriceClass" :: PriceClass, "Enabled" :: Boolean, "ViewerCertificate" :: ViewerCertificate, "Restrictions" :: Restrictions, "WebACLId" :: String, "HttpVersion" :: HttpVersion, "IsIPV6Enabled" :: Boolean }) -> DistributionSummary
```

Constructs DistributionSummary's fields from required parameters

#### `DistributionSummaryList`

``` purescript
newtype DistributionSummaryList
  = DistributionSummaryList (Array DistributionSummary)
```

##### Instances
``` purescript
Newtype DistributionSummaryList _
Generic DistributionSummaryList _
Show DistributionSummaryList
Decode DistributionSummaryList
Encode DistributionSummaryList
```

#### `EventType`

``` purescript
newtype EventType
  = EventType String
```

##### Instances
``` purescript
Newtype EventType _
Generic EventType _
Show EventType
Decode EventType
Encode EventType
```

#### `ForwardedValues`

``` purescript
newtype ForwardedValues
  = ForwardedValues { "QueryString" :: Boolean, "Cookies" :: CookiePreference, "Headers" :: NullOrUndefined (Headers), "QueryStringCacheKeys" :: NullOrUndefined (QueryStringCacheKeys) }
```

<p>A complex type that specifies how CloudFront handles query strings and cookies.</p>

##### Instances
``` purescript
Newtype ForwardedValues _
Generic ForwardedValues _
Show ForwardedValues
Decode ForwardedValues
Encode ForwardedValues
```

#### `newForwardedValues`

``` purescript
newForwardedValues :: CookiePreference -> Boolean -> ForwardedValues
```

Constructs ForwardedValues from required parameters

#### `newForwardedValues'`

``` purescript
newForwardedValues' :: CookiePreference -> Boolean -> ({ "QueryString" :: Boolean, "Cookies" :: CookiePreference, "Headers" :: NullOrUndefined (Headers), "QueryStringCacheKeys" :: NullOrUndefined (QueryStringCacheKeys) } -> { "QueryString" :: Boolean, "Cookies" :: CookiePreference, "Headers" :: NullOrUndefined (Headers), "QueryStringCacheKeys" :: NullOrUndefined (QueryStringCacheKeys) }) -> ForwardedValues
```

Constructs ForwardedValues's fields from required parameters

#### `GeoRestriction`

``` purescript
newtype GeoRestriction
  = GeoRestriction { "RestrictionType" :: GeoRestrictionType, "Quantity" :: Int, "Items" :: NullOrUndefined (LocationList) }
```

<p>A complex type that controls the countries in which your content is distributed. CloudFront determines the location of your users using <code>MaxMind</code> GeoIP databases. </p>

##### Instances
``` purescript
Newtype GeoRestriction _
Generic GeoRestriction _
Show GeoRestriction
Decode GeoRestriction
Encode GeoRestriction
```

#### `newGeoRestriction`

``` purescript
newGeoRestriction :: Int -> GeoRestrictionType -> GeoRestriction
```

Constructs GeoRestriction from required parameters

#### `newGeoRestriction'`

``` purescript
newGeoRestriction' :: Int -> GeoRestrictionType -> ({ "RestrictionType" :: GeoRestrictionType, "Quantity" :: Int, "Items" :: NullOrUndefined (LocationList) } -> { "RestrictionType" :: GeoRestrictionType, "Quantity" :: Int, "Items" :: NullOrUndefined (LocationList) }) -> GeoRestriction
```

Constructs GeoRestriction's fields from required parameters

#### `GeoRestrictionType`

``` purescript
newtype GeoRestrictionType
  = GeoRestrictionType String
```

##### Instances
``` purescript
Newtype GeoRestrictionType _
Generic GeoRestrictionType _
Show GeoRestrictionType
Decode GeoRestrictionType
Encode GeoRestrictionType
```

#### `GetCloudFrontOriginAccessIdentityConfigRequest`

``` purescript
newtype GetCloudFrontOriginAccessIdentityConfigRequest
  = GetCloudFrontOriginAccessIdentityConfigRequest { "Id" :: String }
```

<p>The origin access identity's configuration information. For more information, see <a>CloudFrontOriginAccessIdentityConfigComplexType</a>.</p>

##### Instances
``` purescript
Newtype GetCloudFrontOriginAccessIdentityConfigRequest _
Generic GetCloudFrontOriginAccessIdentityConfigRequest _
Show GetCloudFrontOriginAccessIdentityConfigRequest
Decode GetCloudFrontOriginAccessIdentityConfigRequest
Encode GetCloudFrontOriginAccessIdentityConfigRequest
```

#### `newGetCloudFrontOriginAccessIdentityConfigRequest`

``` purescript
newGetCloudFrontOriginAccessIdentityConfigRequest :: String -> GetCloudFrontOriginAccessIdentityConfigRequest
```

Constructs GetCloudFrontOriginAccessIdentityConfigRequest from required parameters

#### `newGetCloudFrontOriginAccessIdentityConfigRequest'`

``` purescript
newGetCloudFrontOriginAccessIdentityConfigRequest' :: String -> ({ "Id" :: String } -> { "Id" :: String }) -> GetCloudFrontOriginAccessIdentityConfigRequest
```

Constructs GetCloudFrontOriginAccessIdentityConfigRequest's fields from required parameters

#### `GetCloudFrontOriginAccessIdentityConfigResult`

``` purescript
newtype GetCloudFrontOriginAccessIdentityConfigResult
  = GetCloudFrontOriginAccessIdentityConfigResult { "CloudFrontOriginAccessIdentityConfig" :: NullOrUndefined (CloudFrontOriginAccessIdentityConfig), "ETag" :: NullOrUndefined (String) }
```

<p>The returned result of the corresponding request.</p>

##### Instances
``` purescript
Newtype GetCloudFrontOriginAccessIdentityConfigResult _
Generic GetCloudFrontOriginAccessIdentityConfigResult _
Show GetCloudFrontOriginAccessIdentityConfigResult
Decode GetCloudFrontOriginAccessIdentityConfigResult
Encode GetCloudFrontOriginAccessIdentityConfigResult
```

#### `newGetCloudFrontOriginAccessIdentityConfigResult`

``` purescript
newGetCloudFrontOriginAccessIdentityConfigResult :: GetCloudFrontOriginAccessIdentityConfigResult
```

Constructs GetCloudFrontOriginAccessIdentityConfigResult from required parameters

#### `newGetCloudFrontOriginAccessIdentityConfigResult'`

``` purescript
newGetCloudFrontOriginAccessIdentityConfigResult' :: ({ "CloudFrontOriginAccessIdentityConfig" :: NullOrUndefined (CloudFrontOriginAccessIdentityConfig), "ETag" :: NullOrUndefined (String) } -> { "CloudFrontOriginAccessIdentityConfig" :: NullOrUndefined (CloudFrontOriginAccessIdentityConfig), "ETag" :: NullOrUndefined (String) }) -> GetCloudFrontOriginAccessIdentityConfigResult
```

Constructs GetCloudFrontOriginAccessIdentityConfigResult's fields from required parameters

#### `GetCloudFrontOriginAccessIdentityRequest`

``` purescript
newtype GetCloudFrontOriginAccessIdentityRequest
  = GetCloudFrontOriginAccessIdentityRequest { "Id" :: String }
```

<p>The request to get an origin access identity's information.</p>

##### Instances
``` purescript
Newtype GetCloudFrontOriginAccessIdentityRequest _
Generic GetCloudFrontOriginAccessIdentityRequest _
Show GetCloudFrontOriginAccessIdentityRequest
Decode GetCloudFrontOriginAccessIdentityRequest
Encode GetCloudFrontOriginAccessIdentityRequest
```

#### `newGetCloudFrontOriginAccessIdentityRequest`

``` purescript
newGetCloudFrontOriginAccessIdentityRequest :: String -> GetCloudFrontOriginAccessIdentityRequest
```

Constructs GetCloudFrontOriginAccessIdentityRequest from required parameters

#### `newGetCloudFrontOriginAccessIdentityRequest'`

``` purescript
newGetCloudFrontOriginAccessIdentityRequest' :: String -> ({ "Id" :: String } -> { "Id" :: String }) -> GetCloudFrontOriginAccessIdentityRequest
```

Constructs GetCloudFrontOriginAccessIdentityRequest's fields from required parameters

#### `GetCloudFrontOriginAccessIdentityResult`

``` purescript
newtype GetCloudFrontOriginAccessIdentityResult
  = GetCloudFrontOriginAccessIdentityResult { "CloudFrontOriginAccessIdentity" :: NullOrUndefined (CloudFrontOriginAccessIdentity), "ETag" :: NullOrUndefined (String) }
```

<p>The returned result of the corresponding request.</p>

##### Instances
``` purescript
Newtype GetCloudFrontOriginAccessIdentityResult _
Generic GetCloudFrontOriginAccessIdentityResult _
Show GetCloudFrontOriginAccessIdentityResult
Decode GetCloudFrontOriginAccessIdentityResult
Encode GetCloudFrontOriginAccessIdentityResult
```

#### `newGetCloudFrontOriginAccessIdentityResult`

``` purescript
newGetCloudFrontOriginAccessIdentityResult :: GetCloudFrontOriginAccessIdentityResult
```

Constructs GetCloudFrontOriginAccessIdentityResult from required parameters

#### `newGetCloudFrontOriginAccessIdentityResult'`

``` purescript
newGetCloudFrontOriginAccessIdentityResult' :: ({ "CloudFrontOriginAccessIdentity" :: NullOrUndefined (CloudFrontOriginAccessIdentity), "ETag" :: NullOrUndefined (String) } -> { "CloudFrontOriginAccessIdentity" :: NullOrUndefined (CloudFrontOriginAccessIdentity), "ETag" :: NullOrUndefined (String) }) -> GetCloudFrontOriginAccessIdentityResult
```

Constructs GetCloudFrontOriginAccessIdentityResult's fields from required parameters

#### `GetDistributionConfigRequest`

``` purescript
newtype GetDistributionConfigRequest
  = GetDistributionConfigRequest { "Id" :: String }
```

<p>The request to get a distribution configuration.</p>

##### Instances
``` purescript
Newtype GetDistributionConfigRequest _
Generic GetDistributionConfigRequest _
Show GetDistributionConfigRequest
Decode GetDistributionConfigRequest
Encode GetDistributionConfigRequest
```

#### `newGetDistributionConfigRequest`

``` purescript
newGetDistributionConfigRequest :: String -> GetDistributionConfigRequest
```

Constructs GetDistributionConfigRequest from required parameters

#### `newGetDistributionConfigRequest'`

``` purescript
newGetDistributionConfigRequest' :: String -> ({ "Id" :: String } -> { "Id" :: String }) -> GetDistributionConfigRequest
```

Constructs GetDistributionConfigRequest's fields from required parameters

#### `GetDistributionConfigResult`

``` purescript
newtype GetDistributionConfigResult
  = GetDistributionConfigResult { "DistributionConfig" :: NullOrUndefined (DistributionConfig), "ETag" :: NullOrUndefined (String) }
```

<p>The returned result of the corresponding request.</p>

##### Instances
``` purescript
Newtype GetDistributionConfigResult _
Generic GetDistributionConfigResult _
Show GetDistributionConfigResult
Decode GetDistributionConfigResult
Encode GetDistributionConfigResult
```

#### `newGetDistributionConfigResult`

``` purescript
newGetDistributionConfigResult :: GetDistributionConfigResult
```

Constructs GetDistributionConfigResult from required parameters

#### `newGetDistributionConfigResult'`

``` purescript
newGetDistributionConfigResult' :: ({ "DistributionConfig" :: NullOrUndefined (DistributionConfig), "ETag" :: NullOrUndefined (String) } -> { "DistributionConfig" :: NullOrUndefined (DistributionConfig), "ETag" :: NullOrUndefined (String) }) -> GetDistributionConfigResult
```

Constructs GetDistributionConfigResult's fields from required parameters

#### `GetDistributionRequest`

``` purescript
newtype GetDistributionRequest
  = GetDistributionRequest { "Id" :: String }
```

<p>The request to get a distribution's information.</p>

##### Instances
``` purescript
Newtype GetDistributionRequest _
Generic GetDistributionRequest _
Show GetDistributionRequest
Decode GetDistributionRequest
Encode GetDistributionRequest
```

#### `newGetDistributionRequest`

``` purescript
newGetDistributionRequest :: String -> GetDistributionRequest
```

Constructs GetDistributionRequest from required parameters

#### `newGetDistributionRequest'`

``` purescript
newGetDistributionRequest' :: String -> ({ "Id" :: String } -> { "Id" :: String }) -> GetDistributionRequest
```

Constructs GetDistributionRequest's fields from required parameters

#### `GetDistributionResult`

``` purescript
newtype GetDistributionResult
  = GetDistributionResult { "Distribution" :: NullOrUndefined (Distribution), "ETag" :: NullOrUndefined (String) }
```

<p>The returned result of the corresponding request.</p>

##### Instances
``` purescript
Newtype GetDistributionResult _
Generic GetDistributionResult _
Show GetDistributionResult
Decode GetDistributionResult
Encode GetDistributionResult
```

#### `newGetDistributionResult`

``` purescript
newGetDistributionResult :: GetDistributionResult
```

Constructs GetDistributionResult from required parameters

#### `newGetDistributionResult'`

``` purescript
newGetDistributionResult' :: ({ "Distribution" :: NullOrUndefined (Distribution), "ETag" :: NullOrUndefined (String) } -> { "Distribution" :: NullOrUndefined (Distribution), "ETag" :: NullOrUndefined (String) }) -> GetDistributionResult
```

Constructs GetDistributionResult's fields from required parameters

#### `GetInvalidationRequest`

``` purescript
newtype GetInvalidationRequest
  = GetInvalidationRequest { "DistributionId" :: String, "Id" :: String }
```

<p>The request to get an invalidation's information. </p>

##### Instances
``` purescript
Newtype GetInvalidationRequest _
Generic GetInvalidationRequest _
Show GetInvalidationRequest
Decode GetInvalidationRequest
Encode GetInvalidationRequest
```

#### `newGetInvalidationRequest`

``` purescript
newGetInvalidationRequest :: String -> String -> GetInvalidationRequest
```

Constructs GetInvalidationRequest from required parameters

#### `newGetInvalidationRequest'`

``` purescript
newGetInvalidationRequest' :: String -> String -> ({ "DistributionId" :: String, "Id" :: String } -> { "DistributionId" :: String, "Id" :: String }) -> GetInvalidationRequest
```

Constructs GetInvalidationRequest's fields from required parameters

#### `GetInvalidationResult`

``` purescript
newtype GetInvalidationResult
  = GetInvalidationResult { "Invalidation" :: NullOrUndefined (Invalidation) }
```

<p>The returned result of the corresponding request.</p>

##### Instances
``` purescript
Newtype GetInvalidationResult _
Generic GetInvalidationResult _
Show GetInvalidationResult
Decode GetInvalidationResult
Encode GetInvalidationResult
```

#### `newGetInvalidationResult`

``` purescript
newGetInvalidationResult :: GetInvalidationResult
```

Constructs GetInvalidationResult from required parameters

#### `newGetInvalidationResult'`

``` purescript
newGetInvalidationResult' :: ({ "Invalidation" :: NullOrUndefined (Invalidation) } -> { "Invalidation" :: NullOrUndefined (Invalidation) }) -> GetInvalidationResult
```

Constructs GetInvalidationResult's fields from required parameters

#### `GetStreamingDistributionConfigRequest`

``` purescript
newtype GetStreamingDistributionConfigRequest
  = GetStreamingDistributionConfigRequest { "Id" :: String }
```

<p>To request to get a streaming distribution configuration.</p>

##### Instances
``` purescript
Newtype GetStreamingDistributionConfigRequest _
Generic GetStreamingDistributionConfigRequest _
Show GetStreamingDistributionConfigRequest
Decode GetStreamingDistributionConfigRequest
Encode GetStreamingDistributionConfigRequest
```

#### `newGetStreamingDistributionConfigRequest`

``` purescript
newGetStreamingDistributionConfigRequest :: String -> GetStreamingDistributionConfigRequest
```

Constructs GetStreamingDistributionConfigRequest from required parameters

#### `newGetStreamingDistributionConfigRequest'`

``` purescript
newGetStreamingDistributionConfigRequest' :: String -> ({ "Id" :: String } -> { "Id" :: String }) -> GetStreamingDistributionConfigRequest
```

Constructs GetStreamingDistributionConfigRequest's fields from required parameters

#### `GetStreamingDistributionConfigResult`

``` purescript
newtype GetStreamingDistributionConfigResult
  = GetStreamingDistributionConfigResult { "StreamingDistributionConfig" :: NullOrUndefined (StreamingDistributionConfig), "ETag" :: NullOrUndefined (String) }
```

<p>The returned result of the corresponding request.</p>

##### Instances
``` purescript
Newtype GetStreamingDistributionConfigResult _
Generic GetStreamingDistributionConfigResult _
Show GetStreamingDistributionConfigResult
Decode GetStreamingDistributionConfigResult
Encode GetStreamingDistributionConfigResult
```

#### `newGetStreamingDistributionConfigResult`

``` purescript
newGetStreamingDistributionConfigResult :: GetStreamingDistributionConfigResult
```

Constructs GetStreamingDistributionConfigResult from required parameters

#### `newGetStreamingDistributionConfigResult'`

``` purescript
newGetStreamingDistributionConfigResult' :: ({ "StreamingDistributionConfig" :: NullOrUndefined (StreamingDistributionConfig), "ETag" :: NullOrUndefined (String) } -> { "StreamingDistributionConfig" :: NullOrUndefined (StreamingDistributionConfig), "ETag" :: NullOrUndefined (String) }) -> GetStreamingDistributionConfigResult
```

Constructs GetStreamingDistributionConfigResult's fields from required parameters

#### `GetStreamingDistributionRequest`

``` purescript
newtype GetStreamingDistributionRequest
  = GetStreamingDistributionRequest { "Id" :: String }
```

<p>The request to get a streaming distribution's information.</p>

##### Instances
``` purescript
Newtype GetStreamingDistributionRequest _
Generic GetStreamingDistributionRequest _
Show GetStreamingDistributionRequest
Decode GetStreamingDistributionRequest
Encode GetStreamingDistributionRequest
```

#### `newGetStreamingDistributionRequest`

``` purescript
newGetStreamingDistributionRequest :: String -> GetStreamingDistributionRequest
```

Constructs GetStreamingDistributionRequest from required parameters

#### `newGetStreamingDistributionRequest'`

``` purescript
newGetStreamingDistributionRequest' :: String -> ({ "Id" :: String } -> { "Id" :: String }) -> GetStreamingDistributionRequest
```

Constructs GetStreamingDistributionRequest's fields from required parameters

#### `GetStreamingDistributionResult`

``` purescript
newtype GetStreamingDistributionResult
  = GetStreamingDistributionResult { "StreamingDistribution" :: NullOrUndefined (StreamingDistribution), "ETag" :: NullOrUndefined (String) }
```

<p>The returned result of the corresponding request.</p>

##### Instances
``` purescript
Newtype GetStreamingDistributionResult _
Generic GetStreamingDistributionResult _
Show GetStreamingDistributionResult
Decode GetStreamingDistributionResult
Encode GetStreamingDistributionResult
```

#### `newGetStreamingDistributionResult`

``` purescript
newGetStreamingDistributionResult :: GetStreamingDistributionResult
```

Constructs GetStreamingDistributionResult from required parameters

#### `newGetStreamingDistributionResult'`

``` purescript
newGetStreamingDistributionResult' :: ({ "StreamingDistribution" :: NullOrUndefined (StreamingDistribution), "ETag" :: NullOrUndefined (String) } -> { "StreamingDistribution" :: NullOrUndefined (StreamingDistribution), "ETag" :: NullOrUndefined (String) }) -> GetStreamingDistributionResult
```

Constructs GetStreamingDistributionResult's fields from required parameters

#### `HeaderList`

``` purescript
newtype HeaderList
  = HeaderList (Array String)
```

##### Instances
``` purescript
Newtype HeaderList _
Generic HeaderList _
Show HeaderList
Decode HeaderList
Encode HeaderList
```

#### `Headers`

``` purescript
newtype Headers
  = Headers { "Quantity" :: Int, "Items" :: NullOrUndefined (HeaderList) }
```

<p>A complex type that specifies the headers that you want CloudFront to forward to the origin for this cache behavior.</p> <p>For the headers that you specify, CloudFront also caches separate versions of a specified object based on the header values in viewer requests. For example, suppose viewer requests for <code>logo.jpg</code> contain a custom <code>Product</code> header that has a value of either <code>Acme</code> or <code>Apex</code>, and you configure CloudFront to cache your content based on values in the <code>Product</code> header. CloudFront forwards the <code>Product</code> header to the origin and caches the response from the origin once for each header value. For more information about caching based on header values, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/header-caching.html">How CloudFront Forwards and Caches Headers</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>

##### Instances
``` purescript
Newtype Headers _
Generic Headers _
Show Headers
Decode Headers
Encode Headers
```

#### `newHeaders`

``` purescript
newHeaders :: Int -> Headers
```

Constructs Headers from required parameters

#### `newHeaders'`

``` purescript
newHeaders' :: Int -> ({ "Quantity" :: Int, "Items" :: NullOrUndefined (HeaderList) } -> { "Quantity" :: Int, "Items" :: NullOrUndefined (HeaderList) }) -> Headers
```

Constructs Headers's fields from required parameters

#### `HttpVersion`

``` purescript
newtype HttpVersion
  = HttpVersion String
```

##### Instances
``` purescript
Newtype HttpVersion _
Generic HttpVersion _
Show HttpVersion
Decode HttpVersion
Encode HttpVersion
```

#### `IllegalUpdate`

``` purescript
newtype IllegalUpdate
  = IllegalUpdate { "Message" :: NullOrUndefined (String) }
```

<p>Origin and <code>CallerReference</code> cannot be updated. </p>

##### Instances
``` purescript
Newtype IllegalUpdate _
Generic IllegalUpdate _
Show IllegalUpdate
Decode IllegalUpdate
Encode IllegalUpdate
```

#### `newIllegalUpdate`

``` purescript
newIllegalUpdate :: IllegalUpdate
```

Constructs IllegalUpdate from required parameters

#### `newIllegalUpdate'`

``` purescript
newIllegalUpdate' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> IllegalUpdate
```

Constructs IllegalUpdate's fields from required parameters

#### `InconsistentQuantities`

``` purescript
newtype InconsistentQuantities
  = InconsistentQuantities { "Message" :: NullOrUndefined (String) }
```

<p>The value of <code>Quantity</code> and the size of <code>Items</code> do not match.</p>

##### Instances
``` purescript
Newtype InconsistentQuantities _
Generic InconsistentQuantities _
Show InconsistentQuantities
Decode InconsistentQuantities
Encode InconsistentQuantities
```

#### `newInconsistentQuantities`

``` purescript
newInconsistentQuantities :: InconsistentQuantities
```

Constructs InconsistentQuantities from required parameters

#### `newInconsistentQuantities'`

``` purescript
newInconsistentQuantities' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> InconsistentQuantities
```

Constructs InconsistentQuantities's fields from required parameters

#### `InvalidArgument`

``` purescript
newtype InvalidArgument
  = InvalidArgument { "Message" :: NullOrUndefined (String) }
```

<p>The argument is invalid.</p>

##### Instances
``` purescript
Newtype InvalidArgument _
Generic InvalidArgument _
Show InvalidArgument
Decode InvalidArgument
Encode InvalidArgument
```

#### `newInvalidArgument`

``` purescript
newInvalidArgument :: InvalidArgument
```

Constructs InvalidArgument from required parameters

#### `newInvalidArgument'`

``` purescript
newInvalidArgument' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> InvalidArgument
```

Constructs InvalidArgument's fields from required parameters

#### `InvalidDefaultRootObject`

``` purescript
newtype InvalidDefaultRootObject
  = InvalidDefaultRootObject { "Message" :: NullOrUndefined (String) }
```

<p>The default root object file name is too big or contains an invalid character.</p>

##### Instances
``` purescript
Newtype InvalidDefaultRootObject _
Generic InvalidDefaultRootObject _
Show InvalidDefaultRootObject
Decode InvalidDefaultRootObject
Encode InvalidDefaultRootObject
```

#### `newInvalidDefaultRootObject`

``` purescript
newInvalidDefaultRootObject :: InvalidDefaultRootObject
```

Constructs InvalidDefaultRootObject from required parameters

#### `newInvalidDefaultRootObject'`

``` purescript
newInvalidDefaultRootObject' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> InvalidDefaultRootObject
```

Constructs InvalidDefaultRootObject's fields from required parameters

#### `InvalidErrorCode`

``` purescript
newtype InvalidErrorCode
  = InvalidErrorCode { "Message" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype InvalidErrorCode _
Generic InvalidErrorCode _
Show InvalidErrorCode
Decode InvalidErrorCode
Encode InvalidErrorCode
```

#### `newInvalidErrorCode`

``` purescript
newInvalidErrorCode :: InvalidErrorCode
```

Constructs InvalidErrorCode from required parameters

#### `newInvalidErrorCode'`

``` purescript
newInvalidErrorCode' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> InvalidErrorCode
```

Constructs InvalidErrorCode's fields from required parameters

#### `InvalidForwardCookies`

``` purescript
newtype InvalidForwardCookies
  = InvalidForwardCookies { "Message" :: NullOrUndefined (String) }
```

<p>Your request contains forward cookies option which doesn't match with the expectation for the <code>whitelisted</code> list of cookie names. Either list of cookie names has been specified when not allowed or list of cookie names is missing when expected.</p>

##### Instances
``` purescript
Newtype InvalidForwardCookies _
Generic InvalidForwardCookies _
Show InvalidForwardCookies
Decode InvalidForwardCookies
Encode InvalidForwardCookies
```

#### `newInvalidForwardCookies`

``` purescript
newInvalidForwardCookies :: InvalidForwardCookies
```

Constructs InvalidForwardCookies from required parameters

#### `newInvalidForwardCookies'`

``` purescript
newInvalidForwardCookies' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> InvalidForwardCookies
```

Constructs InvalidForwardCookies's fields from required parameters

#### `InvalidGeoRestrictionParameter`

``` purescript
newtype InvalidGeoRestrictionParameter
  = InvalidGeoRestrictionParameter { "Message" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype InvalidGeoRestrictionParameter _
Generic InvalidGeoRestrictionParameter _
Show InvalidGeoRestrictionParameter
Decode InvalidGeoRestrictionParameter
Encode InvalidGeoRestrictionParameter
```

#### `newInvalidGeoRestrictionParameter`

``` purescript
newInvalidGeoRestrictionParameter :: InvalidGeoRestrictionParameter
```

Constructs InvalidGeoRestrictionParameter from required parameters

#### `newInvalidGeoRestrictionParameter'`

``` purescript
newInvalidGeoRestrictionParameter' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> InvalidGeoRestrictionParameter
```

Constructs InvalidGeoRestrictionParameter's fields from required parameters

#### `InvalidHeadersForS3Origin`

``` purescript
newtype InvalidHeadersForS3Origin
  = InvalidHeadersForS3Origin { "Message" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype InvalidHeadersForS3Origin _
Generic InvalidHeadersForS3Origin _
Show InvalidHeadersForS3Origin
Decode InvalidHeadersForS3Origin
Encode InvalidHeadersForS3Origin
```

#### `newInvalidHeadersForS3Origin`

``` purescript
newInvalidHeadersForS3Origin :: InvalidHeadersForS3Origin
```

Constructs InvalidHeadersForS3Origin from required parameters

#### `newInvalidHeadersForS3Origin'`

``` purescript
newInvalidHeadersForS3Origin' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> InvalidHeadersForS3Origin
```

Constructs InvalidHeadersForS3Origin's fields from required parameters

#### `InvalidIfMatchVersion`

``` purescript
newtype InvalidIfMatchVersion
  = InvalidIfMatchVersion { "Message" :: NullOrUndefined (String) }
```

<p>The <code>If-Match</code> version is missing or not valid for the distribution.</p>

##### Instances
``` purescript
Newtype InvalidIfMatchVersion _
Generic InvalidIfMatchVersion _
Show InvalidIfMatchVersion
Decode InvalidIfMatchVersion
Encode InvalidIfMatchVersion
```

#### `newInvalidIfMatchVersion`

``` purescript
newInvalidIfMatchVersion :: InvalidIfMatchVersion
```

Constructs InvalidIfMatchVersion from required parameters

#### `newInvalidIfMatchVersion'`

``` purescript
newInvalidIfMatchVersion' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> InvalidIfMatchVersion
```

Constructs InvalidIfMatchVersion's fields from required parameters

#### `InvalidLambdaFunctionAssociation`

``` purescript
newtype InvalidLambdaFunctionAssociation
  = InvalidLambdaFunctionAssociation { "Message" :: NullOrUndefined (String) }
```

<p>The specified Lambda function association is invalid.</p>

##### Instances
``` purescript
Newtype InvalidLambdaFunctionAssociation _
Generic InvalidLambdaFunctionAssociation _
Show InvalidLambdaFunctionAssociation
Decode InvalidLambdaFunctionAssociation
Encode InvalidLambdaFunctionAssociation
```

#### `newInvalidLambdaFunctionAssociation`

``` purescript
newInvalidLambdaFunctionAssociation :: InvalidLambdaFunctionAssociation
```

Constructs InvalidLambdaFunctionAssociation from required parameters

#### `newInvalidLambdaFunctionAssociation'`

``` purescript
newInvalidLambdaFunctionAssociation' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> InvalidLambdaFunctionAssociation
```

Constructs InvalidLambdaFunctionAssociation's fields from required parameters

#### `InvalidLocationCode`

``` purescript
newtype InvalidLocationCode
  = InvalidLocationCode { "Message" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype InvalidLocationCode _
Generic InvalidLocationCode _
Show InvalidLocationCode
Decode InvalidLocationCode
Encode InvalidLocationCode
```

#### `newInvalidLocationCode`

``` purescript
newInvalidLocationCode :: InvalidLocationCode
```

Constructs InvalidLocationCode from required parameters

#### `newInvalidLocationCode'`

``` purescript
newInvalidLocationCode' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> InvalidLocationCode
```

Constructs InvalidLocationCode's fields from required parameters

#### `InvalidMinimumProtocolVersion`

``` purescript
newtype InvalidMinimumProtocolVersion
  = InvalidMinimumProtocolVersion { "Message" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype InvalidMinimumProtocolVersion _
Generic InvalidMinimumProtocolVersion _
Show InvalidMinimumProtocolVersion
Decode InvalidMinimumProtocolVersion
Encode InvalidMinimumProtocolVersion
```

#### `newInvalidMinimumProtocolVersion`

``` purescript
newInvalidMinimumProtocolVersion :: InvalidMinimumProtocolVersion
```

Constructs InvalidMinimumProtocolVersion from required parameters

#### `newInvalidMinimumProtocolVersion'`

``` purescript
newInvalidMinimumProtocolVersion' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> InvalidMinimumProtocolVersion
```

Constructs InvalidMinimumProtocolVersion's fields from required parameters

#### `InvalidOrigin`

``` purescript
newtype InvalidOrigin
  = InvalidOrigin { "Message" :: NullOrUndefined (String) }
```

<p>The Amazon S3 origin server specified does not refer to a valid Amazon S3 bucket.</p>

##### Instances
``` purescript
Newtype InvalidOrigin _
Generic InvalidOrigin _
Show InvalidOrigin
Decode InvalidOrigin
Encode InvalidOrigin
```

#### `newInvalidOrigin`

``` purescript
newInvalidOrigin :: InvalidOrigin
```

Constructs InvalidOrigin from required parameters

#### `newInvalidOrigin'`

``` purescript
newInvalidOrigin' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> InvalidOrigin
```

Constructs InvalidOrigin's fields from required parameters

#### `InvalidOriginAccessIdentity`

``` purescript
newtype InvalidOriginAccessIdentity
  = InvalidOriginAccessIdentity { "Message" :: NullOrUndefined (String) }
```

<p>The origin access identity is not valid or doesn't exist.</p>

##### Instances
``` purescript
Newtype InvalidOriginAccessIdentity _
Generic InvalidOriginAccessIdentity _
Show InvalidOriginAccessIdentity
Decode InvalidOriginAccessIdentity
Encode InvalidOriginAccessIdentity
```

#### `newInvalidOriginAccessIdentity`

``` purescript
newInvalidOriginAccessIdentity :: InvalidOriginAccessIdentity
```

Constructs InvalidOriginAccessIdentity from required parameters

#### `newInvalidOriginAccessIdentity'`

``` purescript
newInvalidOriginAccessIdentity' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> InvalidOriginAccessIdentity
```

Constructs InvalidOriginAccessIdentity's fields from required parameters

#### `InvalidProtocolSettings`

``` purescript
newtype InvalidProtocolSettings
  = InvalidProtocolSettings { "Message" :: NullOrUndefined (String) }
```

<p>You cannot specify SSLv3 as the minimum protocol version if you only want to support only clients that support Server Name Indication (SNI).</p>

##### Instances
``` purescript
Newtype InvalidProtocolSettings _
Generic InvalidProtocolSettings _
Show InvalidProtocolSettings
Decode InvalidProtocolSettings
Encode InvalidProtocolSettings
```

#### `newInvalidProtocolSettings`

``` purescript
newInvalidProtocolSettings :: InvalidProtocolSettings
```

Constructs InvalidProtocolSettings from required parameters

#### `newInvalidProtocolSettings'`

``` purescript
newInvalidProtocolSettings' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> InvalidProtocolSettings
```

Constructs InvalidProtocolSettings's fields from required parameters

#### `InvalidQueryStringParameters`

``` purescript
newtype InvalidQueryStringParameters
  = InvalidQueryStringParameters { "Message" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype InvalidQueryStringParameters _
Generic InvalidQueryStringParameters _
Show InvalidQueryStringParameters
Decode InvalidQueryStringParameters
Encode InvalidQueryStringParameters
```

#### `newInvalidQueryStringParameters`

``` purescript
newInvalidQueryStringParameters :: InvalidQueryStringParameters
```

Constructs InvalidQueryStringParameters from required parameters

#### `newInvalidQueryStringParameters'`

``` purescript
newInvalidQueryStringParameters' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> InvalidQueryStringParameters
```

Constructs InvalidQueryStringParameters's fields from required parameters

#### `InvalidRelativePath`

``` purescript
newtype InvalidRelativePath
  = InvalidRelativePath { "Message" :: NullOrUndefined (String) }
```

<p>The relative path is too big, is not URL-encoded, or does not begin with a slash (/).</p>

##### Instances
``` purescript
Newtype InvalidRelativePath _
Generic InvalidRelativePath _
Show InvalidRelativePath
Decode InvalidRelativePath
Encode InvalidRelativePath
```

#### `newInvalidRelativePath`

``` purescript
newInvalidRelativePath :: InvalidRelativePath
```

Constructs InvalidRelativePath from required parameters

#### `newInvalidRelativePath'`

``` purescript
newInvalidRelativePath' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> InvalidRelativePath
```

Constructs InvalidRelativePath's fields from required parameters

#### `InvalidRequiredProtocol`

``` purescript
newtype InvalidRequiredProtocol
  = InvalidRequiredProtocol { "Message" :: NullOrUndefined (String) }
```

<p>This operation requires the HTTPS protocol. Ensure that you specify the HTTPS protocol in your request, or omit the <code>RequiredProtocols</code> element from your distribution configuration.</p>

##### Instances
``` purescript
Newtype InvalidRequiredProtocol _
Generic InvalidRequiredProtocol _
Show InvalidRequiredProtocol
Decode InvalidRequiredProtocol
Encode InvalidRequiredProtocol
```

#### `newInvalidRequiredProtocol`

``` purescript
newInvalidRequiredProtocol :: InvalidRequiredProtocol
```

Constructs InvalidRequiredProtocol from required parameters

#### `newInvalidRequiredProtocol'`

``` purescript
newInvalidRequiredProtocol' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> InvalidRequiredProtocol
```

Constructs InvalidRequiredProtocol's fields from required parameters

#### `InvalidResponseCode`

``` purescript
newtype InvalidResponseCode
  = InvalidResponseCode { "Message" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype InvalidResponseCode _
Generic InvalidResponseCode _
Show InvalidResponseCode
Decode InvalidResponseCode
Encode InvalidResponseCode
```

#### `newInvalidResponseCode`

``` purescript
newInvalidResponseCode :: InvalidResponseCode
```

Constructs InvalidResponseCode from required parameters

#### `newInvalidResponseCode'`

``` purescript
newInvalidResponseCode' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> InvalidResponseCode
```

Constructs InvalidResponseCode's fields from required parameters

#### `InvalidTTLOrder`

``` purescript
newtype InvalidTTLOrder
  = InvalidTTLOrder { "Message" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype InvalidTTLOrder _
Generic InvalidTTLOrder _
Show InvalidTTLOrder
Decode InvalidTTLOrder
Encode InvalidTTLOrder
```

#### `newInvalidTTLOrder`

``` purescript
newInvalidTTLOrder :: InvalidTTLOrder
```

Constructs InvalidTTLOrder from required parameters

#### `newInvalidTTLOrder'`

``` purescript
newInvalidTTLOrder' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> InvalidTTLOrder
```

Constructs InvalidTTLOrder's fields from required parameters

#### `InvalidTagging`

``` purescript
newtype InvalidTagging
  = InvalidTagging { "Message" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype InvalidTagging _
Generic InvalidTagging _
Show InvalidTagging
Decode InvalidTagging
Encode InvalidTagging
```

#### `newInvalidTagging`

``` purescript
newInvalidTagging :: InvalidTagging
```

Constructs InvalidTagging from required parameters

#### `newInvalidTagging'`

``` purescript
newInvalidTagging' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> InvalidTagging
```

Constructs InvalidTagging's fields from required parameters

#### `InvalidViewerCertificate`

``` purescript
newtype InvalidViewerCertificate
  = InvalidViewerCertificate { "Message" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype InvalidViewerCertificate _
Generic InvalidViewerCertificate _
Show InvalidViewerCertificate
Decode InvalidViewerCertificate
Encode InvalidViewerCertificate
```

#### `newInvalidViewerCertificate`

``` purescript
newInvalidViewerCertificate :: InvalidViewerCertificate
```

Constructs InvalidViewerCertificate from required parameters

#### `newInvalidViewerCertificate'`

``` purescript
newInvalidViewerCertificate' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> InvalidViewerCertificate
```

Constructs InvalidViewerCertificate's fields from required parameters

#### `InvalidWebACLId`

``` purescript
newtype InvalidWebACLId
  = InvalidWebACLId { "Message" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype InvalidWebACLId _
Generic InvalidWebACLId _
Show InvalidWebACLId
Decode InvalidWebACLId
Encode InvalidWebACLId
```

#### `newInvalidWebACLId`

``` purescript
newInvalidWebACLId :: InvalidWebACLId
```

Constructs InvalidWebACLId from required parameters

#### `newInvalidWebACLId'`

``` purescript
newInvalidWebACLId' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> InvalidWebACLId
```

Constructs InvalidWebACLId's fields from required parameters

#### `Invalidation`

``` purescript
newtype Invalidation
  = Invalidation { "Id" :: String, "Status" :: String, "CreateTime" :: Timestamp, "InvalidationBatch" :: InvalidationBatch }
```

<p>An invalidation. </p>

##### Instances
``` purescript
Newtype Invalidation _
Generic Invalidation _
Show Invalidation
Decode Invalidation
Encode Invalidation
```

#### `newInvalidation`

``` purescript
newInvalidation :: Timestamp -> String -> InvalidationBatch -> String -> Invalidation
```

Constructs Invalidation from required parameters

#### `newInvalidation'`

``` purescript
newInvalidation' :: Timestamp -> String -> InvalidationBatch -> String -> ({ "Id" :: String, "Status" :: String, "CreateTime" :: Timestamp, "InvalidationBatch" :: InvalidationBatch } -> { "Id" :: String, "Status" :: String, "CreateTime" :: Timestamp, "InvalidationBatch" :: InvalidationBatch }) -> Invalidation
```

Constructs Invalidation's fields from required parameters

#### `InvalidationBatch`

``` purescript
newtype InvalidationBatch
  = InvalidationBatch { "Paths" :: Paths, "CallerReference" :: String }
```

<p>An invalidation batch.</p>

##### Instances
``` purescript
Newtype InvalidationBatch _
Generic InvalidationBatch _
Show InvalidationBatch
Decode InvalidationBatch
Encode InvalidationBatch
```

#### `newInvalidationBatch`

``` purescript
newInvalidationBatch :: String -> Paths -> InvalidationBatch
```

Constructs InvalidationBatch from required parameters

#### `newInvalidationBatch'`

``` purescript
newInvalidationBatch' :: String -> Paths -> ({ "Paths" :: Paths, "CallerReference" :: String } -> { "Paths" :: Paths, "CallerReference" :: String }) -> InvalidationBatch
```

Constructs InvalidationBatch's fields from required parameters

#### `InvalidationList`

``` purescript
newtype InvalidationList
  = InvalidationList { "Marker" :: String, "NextMarker" :: NullOrUndefined (String), "MaxItems" :: Int, "IsTruncated" :: Boolean, "Quantity" :: Int, "Items" :: NullOrUndefined (InvalidationSummaryList) }
```

<p>The <code>InvalidationList</code> complex type describes the list of invalidation objects. For more information about invalidation, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html">Invalidating Objects (Web Distributions Only)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>

##### Instances
``` purescript
Newtype InvalidationList _
Generic InvalidationList _
Show InvalidationList
Decode InvalidationList
Encode InvalidationList
```

#### `newInvalidationList`

``` purescript
newInvalidationList :: Boolean -> String -> Int -> Int -> InvalidationList
```

Constructs InvalidationList from required parameters

#### `newInvalidationList'`

``` purescript
newInvalidationList' :: Boolean -> String -> Int -> Int -> ({ "Marker" :: String, "NextMarker" :: NullOrUndefined (String), "MaxItems" :: Int, "IsTruncated" :: Boolean, "Quantity" :: Int, "Items" :: NullOrUndefined (InvalidationSummaryList) } -> { "Marker" :: String, "NextMarker" :: NullOrUndefined (String), "MaxItems" :: Int, "IsTruncated" :: Boolean, "Quantity" :: Int, "Items" :: NullOrUndefined (InvalidationSummaryList) }) -> InvalidationList
```

Constructs InvalidationList's fields from required parameters

#### `InvalidationSummary`

``` purescript
newtype InvalidationSummary
  = InvalidationSummary { "Id" :: String, "CreateTime" :: Timestamp, "Status" :: String }
```

<p>A summary of an invalidation request.</p>

##### Instances
``` purescript
Newtype InvalidationSummary _
Generic InvalidationSummary _
Show InvalidationSummary
Decode InvalidationSummary
Encode InvalidationSummary
```

#### `newInvalidationSummary`

``` purescript
newInvalidationSummary :: Timestamp -> String -> String -> InvalidationSummary
```

Constructs InvalidationSummary from required parameters

#### `newInvalidationSummary'`

``` purescript
newInvalidationSummary' :: Timestamp -> String -> String -> ({ "Id" :: String, "CreateTime" :: Timestamp, "Status" :: String } -> { "Id" :: String, "CreateTime" :: Timestamp, "Status" :: String }) -> InvalidationSummary
```

Constructs InvalidationSummary's fields from required parameters

#### `InvalidationSummaryList`

``` purescript
newtype InvalidationSummaryList
  = InvalidationSummaryList (Array InvalidationSummary)
```

##### Instances
``` purescript
Newtype InvalidationSummaryList _
Generic InvalidationSummaryList _
Show InvalidationSummaryList
Decode InvalidationSummaryList
Encode InvalidationSummaryList
```

#### `ItemSelection`

``` purescript
newtype ItemSelection
  = ItemSelection String
```

##### Instances
``` purescript
Newtype ItemSelection _
Generic ItemSelection _
Show ItemSelection
Decode ItemSelection
Encode ItemSelection
```

#### `KeyPairIdList`

``` purescript
newtype KeyPairIdList
  = KeyPairIdList (Array String)
```

##### Instances
``` purescript
Newtype KeyPairIdList _
Generic KeyPairIdList _
Show KeyPairIdList
Decode KeyPairIdList
Encode KeyPairIdList
```

#### `KeyPairIds`

``` purescript
newtype KeyPairIds
  = KeyPairIds { "Quantity" :: Int, "Items" :: NullOrUndefined (KeyPairIdList) }
```

<p>A complex type that lists the active CloudFront key pairs, if any, that are associated with <code>AwsAccountNumber</code>. </p> <p>For more information, see <a>ActiveTrustedSigners</a>.</p>

##### Instances
``` purescript
Newtype KeyPairIds _
Generic KeyPairIds _
Show KeyPairIds
Decode KeyPairIds
Encode KeyPairIds
```

#### `newKeyPairIds`

``` purescript
newKeyPairIds :: Int -> KeyPairIds
```

Constructs KeyPairIds from required parameters

#### `newKeyPairIds'`

``` purescript
newKeyPairIds' :: Int -> ({ "Quantity" :: Int, "Items" :: NullOrUndefined (KeyPairIdList) } -> { "Quantity" :: Int, "Items" :: NullOrUndefined (KeyPairIdList) }) -> KeyPairIds
```

Constructs KeyPairIds's fields from required parameters

#### `LambdaFunctionAssociation`

``` purescript
newtype LambdaFunctionAssociation
  = LambdaFunctionAssociation { "LambdaFunctionARN" :: NullOrUndefined (String), "EventType" :: NullOrUndefined (EventType) }
```

<p>A complex type that contains a Lambda function association.</p>

##### Instances
``` purescript
Newtype LambdaFunctionAssociation _
Generic LambdaFunctionAssociation _
Show LambdaFunctionAssociation
Decode LambdaFunctionAssociation
Encode LambdaFunctionAssociation
```

#### `newLambdaFunctionAssociation`

``` purescript
newLambdaFunctionAssociation :: LambdaFunctionAssociation
```

Constructs LambdaFunctionAssociation from required parameters

#### `newLambdaFunctionAssociation'`

``` purescript
newLambdaFunctionAssociation' :: ({ "LambdaFunctionARN" :: NullOrUndefined (String), "EventType" :: NullOrUndefined (EventType) } -> { "LambdaFunctionARN" :: NullOrUndefined (String), "EventType" :: NullOrUndefined (EventType) }) -> LambdaFunctionAssociation
```

Constructs LambdaFunctionAssociation's fields from required parameters

#### `LambdaFunctionAssociationList`

``` purescript
newtype LambdaFunctionAssociationList
  = LambdaFunctionAssociationList (Array LambdaFunctionAssociation)
```

##### Instances
``` purescript
Newtype LambdaFunctionAssociationList _
Generic LambdaFunctionAssociationList _
Show LambdaFunctionAssociationList
Decode LambdaFunctionAssociationList
Encode LambdaFunctionAssociationList
```

#### `LambdaFunctionAssociations`

``` purescript
newtype LambdaFunctionAssociations
  = LambdaFunctionAssociations { "Quantity" :: Int, "Items" :: NullOrUndefined (LambdaFunctionAssociationList) }
```

<p>A complex type that specifies a list of Lambda functions associations for a cache behavior.</p> <p>If you want to invoke one or more Lambda functions triggered by requests that match the <code>PathPattern</code> of the cache behavior, specify the applicable values for <code>Quantity</code> and <code>Items</code>. Note that there can be up to 4 <code>LambdaFunctionAssociation</code> items in this list (one for each possible value of <code>EventType</code>) and each <code>EventType</code> can be associated with the Lambda function only once.</p> <p>If you don't want to invoke any Lambda functions for the requests that match <code>PathPattern</code>, specify <code>0</code> for <code>Quantity</code> and omit <code>Items</code>. </p>

##### Instances
``` purescript
Newtype LambdaFunctionAssociations _
Generic LambdaFunctionAssociations _
Show LambdaFunctionAssociations
Decode LambdaFunctionAssociations
Encode LambdaFunctionAssociations
```

#### `newLambdaFunctionAssociations`

``` purescript
newLambdaFunctionAssociations :: Int -> LambdaFunctionAssociations
```

Constructs LambdaFunctionAssociations from required parameters

#### `newLambdaFunctionAssociations'`

``` purescript
newLambdaFunctionAssociations' :: Int -> ({ "Quantity" :: Int, "Items" :: NullOrUndefined (LambdaFunctionAssociationList) } -> { "Quantity" :: Int, "Items" :: NullOrUndefined (LambdaFunctionAssociationList) }) -> LambdaFunctionAssociations
```

Constructs LambdaFunctionAssociations's fields from required parameters

#### `ListCloudFrontOriginAccessIdentitiesRequest`

``` purescript
newtype ListCloudFrontOriginAccessIdentitiesRequest
  = ListCloudFrontOriginAccessIdentitiesRequest { "Marker" :: NullOrUndefined (String), "MaxItems" :: NullOrUndefined (String) }
```

<p>The request to list origin access identities. </p>

##### Instances
``` purescript
Newtype ListCloudFrontOriginAccessIdentitiesRequest _
Generic ListCloudFrontOriginAccessIdentitiesRequest _
Show ListCloudFrontOriginAccessIdentitiesRequest
Decode ListCloudFrontOriginAccessIdentitiesRequest
Encode ListCloudFrontOriginAccessIdentitiesRequest
```

#### `newListCloudFrontOriginAccessIdentitiesRequest`

``` purescript
newListCloudFrontOriginAccessIdentitiesRequest :: ListCloudFrontOriginAccessIdentitiesRequest
```

Constructs ListCloudFrontOriginAccessIdentitiesRequest from required parameters

#### `newListCloudFrontOriginAccessIdentitiesRequest'`

``` purescript
newListCloudFrontOriginAccessIdentitiesRequest' :: ({ "Marker" :: NullOrUndefined (String), "MaxItems" :: NullOrUndefined (String) } -> { "Marker" :: NullOrUndefined (String), "MaxItems" :: NullOrUndefined (String) }) -> ListCloudFrontOriginAccessIdentitiesRequest
```

Constructs ListCloudFrontOriginAccessIdentitiesRequest's fields from required parameters

#### `ListCloudFrontOriginAccessIdentitiesResult`

``` purescript
newtype ListCloudFrontOriginAccessIdentitiesResult
  = ListCloudFrontOriginAccessIdentitiesResult { "CloudFrontOriginAccessIdentityList" :: NullOrUndefined (CloudFrontOriginAccessIdentityList) }
```

<p>The returned result of the corresponding request. </p>

##### Instances
``` purescript
Newtype ListCloudFrontOriginAccessIdentitiesResult _
Generic ListCloudFrontOriginAccessIdentitiesResult _
Show ListCloudFrontOriginAccessIdentitiesResult
Decode ListCloudFrontOriginAccessIdentitiesResult
Encode ListCloudFrontOriginAccessIdentitiesResult
```

#### `newListCloudFrontOriginAccessIdentitiesResult`

``` purescript
newListCloudFrontOriginAccessIdentitiesResult :: ListCloudFrontOriginAccessIdentitiesResult
```

Constructs ListCloudFrontOriginAccessIdentitiesResult from required parameters

#### `newListCloudFrontOriginAccessIdentitiesResult'`

``` purescript
newListCloudFrontOriginAccessIdentitiesResult' :: ({ "CloudFrontOriginAccessIdentityList" :: NullOrUndefined (CloudFrontOriginAccessIdentityList) } -> { "CloudFrontOriginAccessIdentityList" :: NullOrUndefined (CloudFrontOriginAccessIdentityList) }) -> ListCloudFrontOriginAccessIdentitiesResult
```

Constructs ListCloudFrontOriginAccessIdentitiesResult's fields from required parameters

#### `ListDistributionsByWebACLIdRequest`

``` purescript
newtype ListDistributionsByWebACLIdRequest
  = ListDistributionsByWebACLIdRequest { "Marker" :: NullOrUndefined (String), "MaxItems" :: NullOrUndefined (String), "WebACLId" :: String }
```

<p>The request to list distributions that are associated with a specified AWS WAF web ACL. </p>

##### Instances
``` purescript
Newtype ListDistributionsByWebACLIdRequest _
Generic ListDistributionsByWebACLIdRequest _
Show ListDistributionsByWebACLIdRequest
Decode ListDistributionsByWebACLIdRequest
Encode ListDistributionsByWebACLIdRequest
```

#### `newListDistributionsByWebACLIdRequest`

``` purescript
newListDistributionsByWebACLIdRequest :: String -> ListDistributionsByWebACLIdRequest
```

Constructs ListDistributionsByWebACLIdRequest from required parameters

#### `newListDistributionsByWebACLIdRequest'`

``` purescript
newListDistributionsByWebACLIdRequest' :: String -> ({ "Marker" :: NullOrUndefined (String), "MaxItems" :: NullOrUndefined (String), "WebACLId" :: String } -> { "Marker" :: NullOrUndefined (String), "MaxItems" :: NullOrUndefined (String), "WebACLId" :: String }) -> ListDistributionsByWebACLIdRequest
```

Constructs ListDistributionsByWebACLIdRequest's fields from required parameters

#### `ListDistributionsByWebACLIdResult`

``` purescript
newtype ListDistributionsByWebACLIdResult
  = ListDistributionsByWebACLIdResult { "DistributionList" :: NullOrUndefined (DistributionList) }
```

<p>The response to a request to list the distributions that are associated with a specified AWS WAF web ACL. </p>

##### Instances
``` purescript
Newtype ListDistributionsByWebACLIdResult _
Generic ListDistributionsByWebACLIdResult _
Show ListDistributionsByWebACLIdResult
Decode ListDistributionsByWebACLIdResult
Encode ListDistributionsByWebACLIdResult
```

#### `newListDistributionsByWebACLIdResult`

``` purescript
newListDistributionsByWebACLIdResult :: ListDistributionsByWebACLIdResult
```

Constructs ListDistributionsByWebACLIdResult from required parameters

#### `newListDistributionsByWebACLIdResult'`

``` purescript
newListDistributionsByWebACLIdResult' :: ({ "DistributionList" :: NullOrUndefined (DistributionList) } -> { "DistributionList" :: NullOrUndefined (DistributionList) }) -> ListDistributionsByWebACLIdResult
```

Constructs ListDistributionsByWebACLIdResult's fields from required parameters

#### `ListDistributionsRequest`

``` purescript
newtype ListDistributionsRequest
  = ListDistributionsRequest { "Marker" :: NullOrUndefined (String), "MaxItems" :: NullOrUndefined (String) }
```

<p>The request to list your distributions. </p>

##### Instances
``` purescript
Newtype ListDistributionsRequest _
Generic ListDistributionsRequest _
Show ListDistributionsRequest
Decode ListDistributionsRequest
Encode ListDistributionsRequest
```

#### `newListDistributionsRequest`

``` purescript
newListDistributionsRequest :: ListDistributionsRequest
```

Constructs ListDistributionsRequest from required parameters

#### `newListDistributionsRequest'`

``` purescript
newListDistributionsRequest' :: ({ "Marker" :: NullOrUndefined (String), "MaxItems" :: NullOrUndefined (String) } -> { "Marker" :: NullOrUndefined (String), "MaxItems" :: NullOrUndefined (String) }) -> ListDistributionsRequest
```

Constructs ListDistributionsRequest's fields from required parameters

#### `ListDistributionsResult`

``` purescript
newtype ListDistributionsResult
  = ListDistributionsResult { "DistributionList" :: NullOrUndefined (DistributionList) }
```

<p>The returned result of the corresponding request. </p>

##### Instances
``` purescript
Newtype ListDistributionsResult _
Generic ListDistributionsResult _
Show ListDistributionsResult
Decode ListDistributionsResult
Encode ListDistributionsResult
```

#### `newListDistributionsResult`

``` purescript
newListDistributionsResult :: ListDistributionsResult
```

Constructs ListDistributionsResult from required parameters

#### `newListDistributionsResult'`

``` purescript
newListDistributionsResult' :: ({ "DistributionList" :: NullOrUndefined (DistributionList) } -> { "DistributionList" :: NullOrUndefined (DistributionList) }) -> ListDistributionsResult
```

Constructs ListDistributionsResult's fields from required parameters

#### `ListInvalidationsRequest`

``` purescript
newtype ListInvalidationsRequest
  = ListInvalidationsRequest { "DistributionId" :: String, "Marker" :: NullOrUndefined (String), "MaxItems" :: NullOrUndefined (String) }
```

<p>The request to list invalidations. </p>

##### Instances
``` purescript
Newtype ListInvalidationsRequest _
Generic ListInvalidationsRequest _
Show ListInvalidationsRequest
Decode ListInvalidationsRequest
Encode ListInvalidationsRequest
```

#### `newListInvalidationsRequest`

``` purescript
newListInvalidationsRequest :: String -> ListInvalidationsRequest
```

Constructs ListInvalidationsRequest from required parameters

#### `newListInvalidationsRequest'`

``` purescript
newListInvalidationsRequest' :: String -> ({ "DistributionId" :: String, "Marker" :: NullOrUndefined (String), "MaxItems" :: NullOrUndefined (String) } -> { "DistributionId" :: String, "Marker" :: NullOrUndefined (String), "MaxItems" :: NullOrUndefined (String) }) -> ListInvalidationsRequest
```

Constructs ListInvalidationsRequest's fields from required parameters

#### `ListInvalidationsResult`

``` purescript
newtype ListInvalidationsResult
  = ListInvalidationsResult { "InvalidationList" :: NullOrUndefined (InvalidationList) }
```

<p>The returned result of the corresponding request. </p>

##### Instances
``` purescript
Newtype ListInvalidationsResult _
Generic ListInvalidationsResult _
Show ListInvalidationsResult
Decode ListInvalidationsResult
Encode ListInvalidationsResult
```

#### `newListInvalidationsResult`

``` purescript
newListInvalidationsResult :: ListInvalidationsResult
```

Constructs ListInvalidationsResult from required parameters

#### `newListInvalidationsResult'`

``` purescript
newListInvalidationsResult' :: ({ "InvalidationList" :: NullOrUndefined (InvalidationList) } -> { "InvalidationList" :: NullOrUndefined (InvalidationList) }) -> ListInvalidationsResult
```

Constructs ListInvalidationsResult's fields from required parameters

#### `ListStreamingDistributionsRequest`

``` purescript
newtype ListStreamingDistributionsRequest
  = ListStreamingDistributionsRequest { "Marker" :: NullOrUndefined (String), "MaxItems" :: NullOrUndefined (String) }
```

<p>The request to list your streaming distributions. </p>

##### Instances
``` purescript
Newtype ListStreamingDistributionsRequest _
Generic ListStreamingDistributionsRequest _
Show ListStreamingDistributionsRequest
Decode ListStreamingDistributionsRequest
Encode ListStreamingDistributionsRequest
```

#### `newListStreamingDistributionsRequest`

``` purescript
newListStreamingDistributionsRequest :: ListStreamingDistributionsRequest
```

Constructs ListStreamingDistributionsRequest from required parameters

#### `newListStreamingDistributionsRequest'`

``` purescript
newListStreamingDistributionsRequest' :: ({ "Marker" :: NullOrUndefined (String), "MaxItems" :: NullOrUndefined (String) } -> { "Marker" :: NullOrUndefined (String), "MaxItems" :: NullOrUndefined (String) }) -> ListStreamingDistributionsRequest
```

Constructs ListStreamingDistributionsRequest's fields from required parameters

#### `ListStreamingDistributionsResult`

``` purescript
newtype ListStreamingDistributionsResult
  = ListStreamingDistributionsResult { "StreamingDistributionList" :: NullOrUndefined (StreamingDistributionList) }
```

<p>The returned result of the corresponding request. </p>

##### Instances
``` purescript
Newtype ListStreamingDistributionsResult _
Generic ListStreamingDistributionsResult _
Show ListStreamingDistributionsResult
Decode ListStreamingDistributionsResult
Encode ListStreamingDistributionsResult
```

#### `newListStreamingDistributionsResult`

``` purescript
newListStreamingDistributionsResult :: ListStreamingDistributionsResult
```

Constructs ListStreamingDistributionsResult from required parameters

#### `newListStreamingDistributionsResult'`

``` purescript
newListStreamingDistributionsResult' :: ({ "StreamingDistributionList" :: NullOrUndefined (StreamingDistributionList) } -> { "StreamingDistributionList" :: NullOrUndefined (StreamingDistributionList) }) -> ListStreamingDistributionsResult
```

Constructs ListStreamingDistributionsResult's fields from required parameters

#### `ListTagsForResourceRequest`

``` purescript
newtype ListTagsForResourceRequest
  = ListTagsForResourceRequest { "Resource" :: ResourceARN }
```

<p> The request to list tags for a CloudFront resource.</p>

##### Instances
``` purescript
Newtype ListTagsForResourceRequest _
Generic ListTagsForResourceRequest _
Show ListTagsForResourceRequest
Decode ListTagsForResourceRequest
Encode ListTagsForResourceRequest
```

#### `newListTagsForResourceRequest`

``` purescript
newListTagsForResourceRequest :: ResourceARN -> ListTagsForResourceRequest
```

Constructs ListTagsForResourceRequest from required parameters

#### `newListTagsForResourceRequest'`

``` purescript
newListTagsForResourceRequest' :: ResourceARN -> ({ "Resource" :: ResourceARN } -> { "Resource" :: ResourceARN }) -> ListTagsForResourceRequest
```

Constructs ListTagsForResourceRequest's fields from required parameters

#### `ListTagsForResourceResult`

``` purescript
newtype ListTagsForResourceResult
  = ListTagsForResourceResult { "Tags" :: Tags }
```

<p> The returned result of the corresponding request.</p>

##### Instances
``` purescript
Newtype ListTagsForResourceResult _
Generic ListTagsForResourceResult _
Show ListTagsForResourceResult
Decode ListTagsForResourceResult
Encode ListTagsForResourceResult
```

#### `newListTagsForResourceResult`

``` purescript
newListTagsForResourceResult :: Tags -> ListTagsForResourceResult
```

Constructs ListTagsForResourceResult from required parameters

#### `newListTagsForResourceResult'`

``` purescript
newListTagsForResourceResult' :: Tags -> ({ "Tags" :: Tags } -> { "Tags" :: Tags }) -> ListTagsForResourceResult
```

Constructs ListTagsForResourceResult's fields from required parameters

#### `LocationList`

``` purescript
newtype LocationList
  = LocationList (Array String)
```

##### Instances
``` purescript
Newtype LocationList _
Generic LocationList _
Show LocationList
Decode LocationList
Encode LocationList
```

#### `LoggingConfig`

``` purescript
newtype LoggingConfig
  = LoggingConfig { "Enabled" :: Boolean, "IncludeCookies" :: Boolean, "Bucket" :: String, "Prefix" :: String }
```

<p>A complex type that controls whether access logs are written for the distribution.</p>

##### Instances
``` purescript
Newtype LoggingConfig _
Generic LoggingConfig _
Show LoggingConfig
Decode LoggingConfig
Encode LoggingConfig
```

#### `newLoggingConfig`

``` purescript
newLoggingConfig :: String -> Boolean -> Boolean -> String -> LoggingConfig
```

Constructs LoggingConfig from required parameters

#### `newLoggingConfig'`

``` purescript
newLoggingConfig' :: String -> Boolean -> Boolean -> String -> ({ "Enabled" :: Boolean, "IncludeCookies" :: Boolean, "Bucket" :: String, "Prefix" :: String } -> { "Enabled" :: Boolean, "IncludeCookies" :: Boolean, "Bucket" :: String, "Prefix" :: String }) -> LoggingConfig
```

Constructs LoggingConfig's fields from required parameters

#### `Method`

``` purescript
newtype Method
  = Method String
```

##### Instances
``` purescript
Newtype Method _
Generic Method _
Show Method
Decode Method
Encode Method
```

#### `MethodsList`

``` purescript
newtype MethodsList
  = MethodsList (Array Method)
```

##### Instances
``` purescript
Newtype MethodsList _
Generic MethodsList _
Show MethodsList
Decode MethodsList
Encode MethodsList
```

#### `MinimumProtocolVersion`

``` purescript
newtype MinimumProtocolVersion
  = MinimumProtocolVersion String
```

##### Instances
``` purescript
Newtype MinimumProtocolVersion _
Generic MinimumProtocolVersion _
Show MinimumProtocolVersion
Decode MinimumProtocolVersion
Encode MinimumProtocolVersion
```

#### `MissingBody`

``` purescript
newtype MissingBody
  = MissingBody { "Message" :: NullOrUndefined (String) }
```

<p>This operation requires a body. Ensure that the body is present and the Content-Type header is set.</p>

##### Instances
``` purescript
Newtype MissingBody _
Generic MissingBody _
Show MissingBody
Decode MissingBody
Encode MissingBody
```

#### `newMissingBody`

``` purescript
newMissingBody :: MissingBody
```

Constructs MissingBody from required parameters

#### `newMissingBody'`

``` purescript
newMissingBody' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> MissingBody
```

Constructs MissingBody's fields from required parameters

#### `NoSuchCloudFrontOriginAccessIdentity`

``` purescript
newtype NoSuchCloudFrontOriginAccessIdentity
  = NoSuchCloudFrontOriginAccessIdentity { "Message" :: NullOrUndefined (String) }
```

<p>The specified origin access identity does not exist.</p>

##### Instances
``` purescript
Newtype NoSuchCloudFrontOriginAccessIdentity _
Generic NoSuchCloudFrontOriginAccessIdentity _
Show NoSuchCloudFrontOriginAccessIdentity
Decode NoSuchCloudFrontOriginAccessIdentity
Encode NoSuchCloudFrontOriginAccessIdentity
```

#### `newNoSuchCloudFrontOriginAccessIdentity`

``` purescript
newNoSuchCloudFrontOriginAccessIdentity :: NoSuchCloudFrontOriginAccessIdentity
```

Constructs NoSuchCloudFrontOriginAccessIdentity from required parameters

#### `newNoSuchCloudFrontOriginAccessIdentity'`

``` purescript
newNoSuchCloudFrontOriginAccessIdentity' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> NoSuchCloudFrontOriginAccessIdentity
```

Constructs NoSuchCloudFrontOriginAccessIdentity's fields from required parameters

#### `NoSuchDistribution`

``` purescript
newtype NoSuchDistribution
  = NoSuchDistribution { "Message" :: NullOrUndefined (String) }
```

<p>The specified distribution does not exist.</p>

##### Instances
``` purescript
Newtype NoSuchDistribution _
Generic NoSuchDistribution _
Show NoSuchDistribution
Decode NoSuchDistribution
Encode NoSuchDistribution
```

#### `newNoSuchDistribution`

``` purescript
newNoSuchDistribution :: NoSuchDistribution
```

Constructs NoSuchDistribution from required parameters

#### `newNoSuchDistribution'`

``` purescript
newNoSuchDistribution' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> NoSuchDistribution
```

Constructs NoSuchDistribution's fields from required parameters

#### `NoSuchInvalidation`

``` purescript
newtype NoSuchInvalidation
  = NoSuchInvalidation { "Message" :: NullOrUndefined (String) }
```

<p>The specified invalidation does not exist.</p>

##### Instances
``` purescript
Newtype NoSuchInvalidation _
Generic NoSuchInvalidation _
Show NoSuchInvalidation
Decode NoSuchInvalidation
Encode NoSuchInvalidation
```

#### `newNoSuchInvalidation`

``` purescript
newNoSuchInvalidation :: NoSuchInvalidation
```

Constructs NoSuchInvalidation from required parameters

#### `newNoSuchInvalidation'`

``` purescript
newNoSuchInvalidation' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> NoSuchInvalidation
```

Constructs NoSuchInvalidation's fields from required parameters

#### `NoSuchOrigin`

``` purescript
newtype NoSuchOrigin
  = NoSuchOrigin { "Message" :: NullOrUndefined (String) }
```

<p>No origin exists with the specified <code>Origin Id</code>. </p>

##### Instances
``` purescript
Newtype NoSuchOrigin _
Generic NoSuchOrigin _
Show NoSuchOrigin
Decode NoSuchOrigin
Encode NoSuchOrigin
```

#### `newNoSuchOrigin`

``` purescript
newNoSuchOrigin :: NoSuchOrigin
```

Constructs NoSuchOrigin from required parameters

#### `newNoSuchOrigin'`

``` purescript
newNoSuchOrigin' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> NoSuchOrigin
```

Constructs NoSuchOrigin's fields from required parameters

#### `NoSuchResource`

``` purescript
newtype NoSuchResource
  = NoSuchResource { "Message" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype NoSuchResource _
Generic NoSuchResource _
Show NoSuchResource
Decode NoSuchResource
Encode NoSuchResource
```

#### `newNoSuchResource`

``` purescript
newNoSuchResource :: NoSuchResource
```

Constructs NoSuchResource from required parameters

#### `newNoSuchResource'`

``` purescript
newNoSuchResource' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> NoSuchResource
```

Constructs NoSuchResource's fields from required parameters

#### `NoSuchStreamingDistribution`

``` purescript
newtype NoSuchStreamingDistribution
  = NoSuchStreamingDistribution { "Message" :: NullOrUndefined (String) }
```

<p>The specified streaming distribution does not exist.</p>

##### Instances
``` purescript
Newtype NoSuchStreamingDistribution _
Generic NoSuchStreamingDistribution _
Show NoSuchStreamingDistribution
Decode NoSuchStreamingDistribution
Encode NoSuchStreamingDistribution
```

#### `newNoSuchStreamingDistribution`

``` purescript
newNoSuchStreamingDistribution :: NoSuchStreamingDistribution
```

Constructs NoSuchStreamingDistribution from required parameters

#### `newNoSuchStreamingDistribution'`

``` purescript
newNoSuchStreamingDistribution' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> NoSuchStreamingDistribution
```

Constructs NoSuchStreamingDistribution's fields from required parameters

#### `Origin`

``` purescript
newtype Origin
  = Origin { "Id" :: String, "DomainName" :: String, "OriginPath" :: NullOrUndefined (String), "CustomHeaders" :: NullOrUndefined (CustomHeaders), "S3OriginConfig" :: NullOrUndefined (S3OriginConfig), "CustomOriginConfig" :: NullOrUndefined (CustomOriginConfig) }
```

<p>A complex type that describes the Amazon S3 bucket or the HTTP server (for example, a web server) from which CloudFront gets your files. You must create at least one origin.</p> <p>For the current limit on the number of origins that you can create for a distribution, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_cloudfront">Amazon CloudFront Limits</a> in the <i>AWS General Reference</i>.</p>

##### Instances
``` purescript
Newtype Origin _
Generic Origin _
Show Origin
Decode Origin
Encode Origin
```

#### `newOrigin`

``` purescript
newOrigin :: String -> String -> Origin
```

Constructs Origin from required parameters

#### `newOrigin'`

``` purescript
newOrigin' :: String -> String -> ({ "Id" :: String, "DomainName" :: String, "OriginPath" :: NullOrUndefined (String), "CustomHeaders" :: NullOrUndefined (CustomHeaders), "S3OriginConfig" :: NullOrUndefined (S3OriginConfig), "CustomOriginConfig" :: NullOrUndefined (CustomOriginConfig) } -> { "Id" :: String, "DomainName" :: String, "OriginPath" :: NullOrUndefined (String), "CustomHeaders" :: NullOrUndefined (CustomHeaders), "S3OriginConfig" :: NullOrUndefined (S3OriginConfig), "CustomOriginConfig" :: NullOrUndefined (CustomOriginConfig) }) -> Origin
```

Constructs Origin's fields from required parameters

#### `OriginCustomHeader`

``` purescript
newtype OriginCustomHeader
  = OriginCustomHeader { "HeaderName" :: String, "HeaderValue" :: String }
```

<p>A complex type that contains <code>HeaderName</code> and <code>HeaderValue</code> elements, if any, for this distribution. </p>

##### Instances
``` purescript
Newtype OriginCustomHeader _
Generic OriginCustomHeader _
Show OriginCustomHeader
Decode OriginCustomHeader
Encode OriginCustomHeader
```

#### `newOriginCustomHeader`

``` purescript
newOriginCustomHeader :: String -> String -> OriginCustomHeader
```

Constructs OriginCustomHeader from required parameters

#### `newOriginCustomHeader'`

``` purescript
newOriginCustomHeader' :: String -> String -> ({ "HeaderName" :: String, "HeaderValue" :: String } -> { "HeaderName" :: String, "HeaderValue" :: String }) -> OriginCustomHeader
```

Constructs OriginCustomHeader's fields from required parameters

#### `OriginCustomHeadersList`

``` purescript
newtype OriginCustomHeadersList
  = OriginCustomHeadersList (Array OriginCustomHeader)
```

##### Instances
``` purescript
Newtype OriginCustomHeadersList _
Generic OriginCustomHeadersList _
Show OriginCustomHeadersList
Decode OriginCustomHeadersList
Encode OriginCustomHeadersList
```

#### `OriginList`

``` purescript
newtype OriginList
  = OriginList (Array Origin)
```

##### Instances
``` purescript
Newtype OriginList _
Generic OriginList _
Show OriginList
Decode OriginList
Encode OriginList
```

#### `OriginProtocolPolicy`

``` purescript
newtype OriginProtocolPolicy
  = OriginProtocolPolicy String
```

##### Instances
``` purescript
Newtype OriginProtocolPolicy _
Generic OriginProtocolPolicy _
Show OriginProtocolPolicy
Decode OriginProtocolPolicy
Encode OriginProtocolPolicy
```

#### `OriginSslProtocols`

``` purescript
newtype OriginSslProtocols
  = OriginSslProtocols { "Quantity" :: Int, "Items" :: SslProtocolsList }
```

<p>A complex type that contains information about the SSL/TLS protocols that CloudFront can use when establishing an HTTPS connection with your origin. </p>

##### Instances
``` purescript
Newtype OriginSslProtocols _
Generic OriginSslProtocols _
Show OriginSslProtocols
Decode OriginSslProtocols
Encode OriginSslProtocols
```

#### `newOriginSslProtocols`

``` purescript
newOriginSslProtocols :: SslProtocolsList -> Int -> OriginSslProtocols
```

Constructs OriginSslProtocols from required parameters

#### `newOriginSslProtocols'`

``` purescript
newOriginSslProtocols' :: SslProtocolsList -> Int -> ({ "Quantity" :: Int, "Items" :: SslProtocolsList } -> { "Quantity" :: Int, "Items" :: SslProtocolsList }) -> OriginSslProtocols
```

Constructs OriginSslProtocols's fields from required parameters

#### `Origins`

``` purescript
newtype Origins
  = Origins { "Quantity" :: Int, "Items" :: NullOrUndefined (OriginList) }
```

<p>A complex type that contains information about origins for this distribution. </p>

##### Instances
``` purescript
Newtype Origins _
Generic Origins _
Show Origins
Decode Origins
Encode Origins
```

#### `newOrigins`

``` purescript
newOrigins :: Int -> Origins
```

Constructs Origins from required parameters

#### `newOrigins'`

``` purescript
newOrigins' :: Int -> ({ "Quantity" :: Int, "Items" :: NullOrUndefined (OriginList) } -> { "Quantity" :: Int, "Items" :: NullOrUndefined (OriginList) }) -> Origins
```

Constructs Origins's fields from required parameters

#### `PathList`

``` purescript
newtype PathList
  = PathList (Array String)
```

##### Instances
``` purescript
Newtype PathList _
Generic PathList _
Show PathList
Decode PathList
Encode PathList
```

#### `Paths`

``` purescript
newtype Paths
  = Paths { "Quantity" :: Int, "Items" :: NullOrUndefined (PathList) }
```

<p>A complex type that contains information about the objects that you want to invalidate. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html#invalidation-specifying-objects">Specifying the Objects to Invalidate</a> in the <i>Amazon CloudFront Developer Guide</i>. </p>

##### Instances
``` purescript
Newtype Paths _
Generic Paths _
Show Paths
Decode Paths
Encode Paths
```

#### `newPaths`

``` purescript
newPaths :: Int -> Paths
```

Constructs Paths from required parameters

#### `newPaths'`

``` purescript
newPaths' :: Int -> ({ "Quantity" :: Int, "Items" :: NullOrUndefined (PathList) } -> { "Quantity" :: Int, "Items" :: NullOrUndefined (PathList) }) -> Paths
```

Constructs Paths's fields from required parameters

#### `PreconditionFailed`

``` purescript
newtype PreconditionFailed
  = PreconditionFailed { "Message" :: NullOrUndefined (String) }
```

<p>The precondition given in one or more of the request-header fields evaluated to <code>false</code>. </p>

##### Instances
``` purescript
Newtype PreconditionFailed _
Generic PreconditionFailed _
Show PreconditionFailed
Decode PreconditionFailed
Encode PreconditionFailed
```

#### `newPreconditionFailed`

``` purescript
newPreconditionFailed :: PreconditionFailed
```

Constructs PreconditionFailed from required parameters

#### `newPreconditionFailed'`

``` purescript
newPreconditionFailed' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> PreconditionFailed
```

Constructs PreconditionFailed's fields from required parameters

#### `PriceClass`

``` purescript
newtype PriceClass
  = PriceClass String
```

##### Instances
``` purescript
Newtype PriceClass _
Generic PriceClass _
Show PriceClass
Decode PriceClass
Encode PriceClass
```

#### `QueryStringCacheKeys`

``` purescript
newtype QueryStringCacheKeys
  = QueryStringCacheKeys { "Quantity" :: Int, "Items" :: NullOrUndefined (QueryStringCacheKeysList) }
```

##### Instances
``` purescript
Newtype QueryStringCacheKeys _
Generic QueryStringCacheKeys _
Show QueryStringCacheKeys
Decode QueryStringCacheKeys
Encode QueryStringCacheKeys
```

#### `newQueryStringCacheKeys`

``` purescript
newQueryStringCacheKeys :: Int -> QueryStringCacheKeys
```

Constructs QueryStringCacheKeys from required parameters

#### `newQueryStringCacheKeys'`

``` purescript
newQueryStringCacheKeys' :: Int -> ({ "Quantity" :: Int, "Items" :: NullOrUndefined (QueryStringCacheKeysList) } -> { "Quantity" :: Int, "Items" :: NullOrUndefined (QueryStringCacheKeysList) }) -> QueryStringCacheKeys
```

Constructs QueryStringCacheKeys's fields from required parameters

#### `QueryStringCacheKeysList`

``` purescript
newtype QueryStringCacheKeysList
  = QueryStringCacheKeysList (Array String)
```

##### Instances
``` purescript
Newtype QueryStringCacheKeysList _
Generic QueryStringCacheKeysList _
Show QueryStringCacheKeysList
Decode QueryStringCacheKeysList
Encode QueryStringCacheKeysList
```

#### `ResourceARN`

``` purescript
newtype ResourceARN
  = ResourceARN String
```

##### Instances
``` purescript
Newtype ResourceARN _
Generic ResourceARN _
Show ResourceARN
Decode ResourceARN
Encode ResourceARN
```

#### `Restrictions`

``` purescript
newtype Restrictions
  = Restrictions { "GeoRestriction" :: GeoRestriction }
```

<p>A complex type that identifies ways in which you want to restrict distribution of your content.</p>

##### Instances
``` purescript
Newtype Restrictions _
Generic Restrictions _
Show Restrictions
Decode Restrictions
Encode Restrictions
```

#### `newRestrictions`

``` purescript
newRestrictions :: GeoRestriction -> Restrictions
```

Constructs Restrictions from required parameters

#### `newRestrictions'`

``` purescript
newRestrictions' :: GeoRestriction -> ({ "GeoRestriction" :: GeoRestriction } -> { "GeoRestriction" :: GeoRestriction }) -> Restrictions
```

Constructs Restrictions's fields from required parameters

#### `S3Origin`

``` purescript
newtype S3Origin
  = S3Origin { "DomainName" :: String, "OriginAccessIdentity" :: String }
```

<p>A complex type that contains information about the Amazon S3 bucket from which you want CloudFront to get your media files for distribution.</p>

##### Instances
``` purescript
Newtype S3Origin _
Generic S3Origin _
Show S3Origin
Decode S3Origin
Encode S3Origin
```

#### `newS3Origin`

``` purescript
newS3Origin :: String -> String -> S3Origin
```

Constructs S3Origin from required parameters

#### `newS3Origin'`

``` purescript
newS3Origin' :: String -> String -> ({ "DomainName" :: String, "OriginAccessIdentity" :: String } -> { "DomainName" :: String, "OriginAccessIdentity" :: String }) -> S3Origin
```

Constructs S3Origin's fields from required parameters

#### `S3OriginConfig`

``` purescript
newtype S3OriginConfig
  = S3OriginConfig { "OriginAccessIdentity" :: String }
```

<p>A complex type that contains information about the Amazon S3 origin. If the origin is a custom origin, use the <code>CustomOriginConfig</code> element instead.</p>

##### Instances
``` purescript
Newtype S3OriginConfig _
Generic S3OriginConfig _
Show S3OriginConfig
Decode S3OriginConfig
Encode S3OriginConfig
```

#### `newS3OriginConfig`

``` purescript
newS3OriginConfig :: String -> S3OriginConfig
```

Constructs S3OriginConfig from required parameters

#### `newS3OriginConfig'`

``` purescript
newS3OriginConfig' :: String -> ({ "OriginAccessIdentity" :: String } -> { "OriginAccessIdentity" :: String }) -> S3OriginConfig
```

Constructs S3OriginConfig's fields from required parameters

#### `SSLSupportMethod`

``` purescript
newtype SSLSupportMethod
  = SSLSupportMethod String
```

##### Instances
``` purescript
Newtype SSLSupportMethod _
Generic SSLSupportMethod _
Show SSLSupportMethod
Decode SSLSupportMethod
Encode SSLSupportMethod
```

#### `Signer`

``` purescript
newtype Signer
  = Signer { "AwsAccountNumber" :: NullOrUndefined (String), "KeyPairIds" :: NullOrUndefined (KeyPairIds) }
```

<p>A complex type that lists the AWS accounts that were included in the <code>TrustedSigners</code> complex type, as well as their active CloudFront key pair IDs, if any. </p>

##### Instances
``` purescript
Newtype Signer _
Generic Signer _
Show Signer
Decode Signer
Encode Signer
```

#### `newSigner`

``` purescript
newSigner :: Signer
```

Constructs Signer from required parameters

#### `newSigner'`

``` purescript
newSigner' :: ({ "AwsAccountNumber" :: NullOrUndefined (String), "KeyPairIds" :: NullOrUndefined (KeyPairIds) } -> { "AwsAccountNumber" :: NullOrUndefined (String), "KeyPairIds" :: NullOrUndefined (KeyPairIds) }) -> Signer
```

Constructs Signer's fields from required parameters

#### `SignerList`

``` purescript
newtype SignerList
  = SignerList (Array Signer)
```

##### Instances
``` purescript
Newtype SignerList _
Generic SignerList _
Show SignerList
Decode SignerList
Encode SignerList
```

#### `SslProtocol`

``` purescript
newtype SslProtocol
  = SslProtocol String
```

##### Instances
``` purescript
Newtype SslProtocol _
Generic SslProtocol _
Show SslProtocol
Decode SslProtocol
Encode SslProtocol
```

#### `SslProtocolsList`

``` purescript
newtype SslProtocolsList
  = SslProtocolsList (Array SslProtocol)
```

##### Instances
``` purescript
Newtype SslProtocolsList _
Generic SslProtocolsList _
Show SslProtocolsList
Decode SslProtocolsList
Encode SslProtocolsList
```

#### `StreamingDistribution`

``` purescript
newtype StreamingDistribution
  = StreamingDistribution { "Id" :: String, "ARN" :: String, "Status" :: String, "LastModifiedTime" :: NullOrUndefined (Timestamp), "DomainName" :: String, "ActiveTrustedSigners" :: ActiveTrustedSigners, "StreamingDistributionConfig" :: StreamingDistributionConfig }
```

<p>A streaming distribution. </p>

##### Instances
``` purescript
Newtype StreamingDistribution _
Generic StreamingDistribution _
Show StreamingDistribution
Decode StreamingDistribution
Encode StreamingDistribution
```

#### `newStreamingDistribution`

``` purescript
newStreamingDistribution :: String -> ActiveTrustedSigners -> String -> String -> String -> StreamingDistributionConfig -> StreamingDistribution
```

Constructs StreamingDistribution from required parameters

#### `newStreamingDistribution'`

``` purescript
newStreamingDistribution' :: String -> ActiveTrustedSigners -> String -> String -> String -> StreamingDistributionConfig -> ({ "Id" :: String, "ARN" :: String, "Status" :: String, "LastModifiedTime" :: NullOrUndefined (Timestamp), "DomainName" :: String, "ActiveTrustedSigners" :: ActiveTrustedSigners, "StreamingDistributionConfig" :: StreamingDistributionConfig } -> { "Id" :: String, "ARN" :: String, "Status" :: String, "LastModifiedTime" :: NullOrUndefined (Timestamp), "DomainName" :: String, "ActiveTrustedSigners" :: ActiveTrustedSigners, "StreamingDistributionConfig" :: StreamingDistributionConfig }) -> StreamingDistribution
```

Constructs StreamingDistribution's fields from required parameters

#### `StreamingDistributionAlreadyExists`

``` purescript
newtype StreamingDistributionAlreadyExists
  = StreamingDistributionAlreadyExists { "Message" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype StreamingDistributionAlreadyExists _
Generic StreamingDistributionAlreadyExists _
Show StreamingDistributionAlreadyExists
Decode StreamingDistributionAlreadyExists
Encode StreamingDistributionAlreadyExists
```

#### `newStreamingDistributionAlreadyExists`

``` purescript
newStreamingDistributionAlreadyExists :: StreamingDistributionAlreadyExists
```

Constructs StreamingDistributionAlreadyExists from required parameters

#### `newStreamingDistributionAlreadyExists'`

``` purescript
newStreamingDistributionAlreadyExists' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> StreamingDistributionAlreadyExists
```

Constructs StreamingDistributionAlreadyExists's fields from required parameters

#### `StreamingDistributionConfig`

``` purescript
newtype StreamingDistributionConfig
  = StreamingDistributionConfig { "CallerReference" :: String, "S3Origin" :: S3Origin, "Aliases" :: NullOrUndefined (Aliases), "Comment" :: String, "Logging" :: NullOrUndefined (StreamingLoggingConfig), "TrustedSigners" :: TrustedSigners, "PriceClass" :: NullOrUndefined (PriceClass), "Enabled" :: Boolean }
```

<p>The RTMP distribution's configuration information.</p>

##### Instances
``` purescript
Newtype StreamingDistributionConfig _
Generic StreamingDistributionConfig _
Show StreamingDistributionConfig
Decode StreamingDistributionConfig
Encode StreamingDistributionConfig
```

#### `newStreamingDistributionConfig`

``` purescript
newStreamingDistributionConfig :: String -> String -> Boolean -> S3Origin -> TrustedSigners -> StreamingDistributionConfig
```

Constructs StreamingDistributionConfig from required parameters

#### `newStreamingDistributionConfig'`

``` purescript
newStreamingDistributionConfig' :: String -> String -> Boolean -> S3Origin -> TrustedSigners -> ({ "CallerReference" :: String, "S3Origin" :: S3Origin, "Aliases" :: NullOrUndefined (Aliases), "Comment" :: String, "Logging" :: NullOrUndefined (StreamingLoggingConfig), "TrustedSigners" :: TrustedSigners, "PriceClass" :: NullOrUndefined (PriceClass), "Enabled" :: Boolean } -> { "CallerReference" :: String, "S3Origin" :: S3Origin, "Aliases" :: NullOrUndefined (Aliases), "Comment" :: String, "Logging" :: NullOrUndefined (StreamingLoggingConfig), "TrustedSigners" :: TrustedSigners, "PriceClass" :: NullOrUndefined (PriceClass), "Enabled" :: Boolean }) -> StreamingDistributionConfig
```

Constructs StreamingDistributionConfig's fields from required parameters

#### `StreamingDistributionConfigWithTags`

``` purescript
newtype StreamingDistributionConfigWithTags
  = StreamingDistributionConfigWithTags { "StreamingDistributionConfig" :: StreamingDistributionConfig, "Tags" :: Tags }
```

<p>A streaming distribution Configuration and a list of tags to be associated with the streaming distribution.</p>

##### Instances
``` purescript
Newtype StreamingDistributionConfigWithTags _
Generic StreamingDistributionConfigWithTags _
Show StreamingDistributionConfigWithTags
Decode StreamingDistributionConfigWithTags
Encode StreamingDistributionConfigWithTags
```

#### `newStreamingDistributionConfigWithTags`

``` purescript
newStreamingDistributionConfigWithTags :: StreamingDistributionConfig -> Tags -> StreamingDistributionConfigWithTags
```

Constructs StreamingDistributionConfigWithTags from required parameters

#### `newStreamingDistributionConfigWithTags'`

``` purescript
newStreamingDistributionConfigWithTags' :: StreamingDistributionConfig -> Tags -> ({ "StreamingDistributionConfig" :: StreamingDistributionConfig, "Tags" :: Tags } -> { "StreamingDistributionConfig" :: StreamingDistributionConfig, "Tags" :: Tags }) -> StreamingDistributionConfigWithTags
```

Constructs StreamingDistributionConfigWithTags's fields from required parameters

#### `StreamingDistributionList`

``` purescript
newtype StreamingDistributionList
  = StreamingDistributionList { "Marker" :: String, "NextMarker" :: NullOrUndefined (String), "MaxItems" :: Int, "IsTruncated" :: Boolean, "Quantity" :: Int, "Items" :: NullOrUndefined (StreamingDistributionSummaryList) }
```

<p>A streaming distribution list. </p>

##### Instances
``` purescript
Newtype StreamingDistributionList _
Generic StreamingDistributionList _
Show StreamingDistributionList
Decode StreamingDistributionList
Encode StreamingDistributionList
```

#### `newStreamingDistributionList`

``` purescript
newStreamingDistributionList :: Boolean -> String -> Int -> Int -> StreamingDistributionList
```

Constructs StreamingDistributionList from required parameters

#### `newStreamingDistributionList'`

``` purescript
newStreamingDistributionList' :: Boolean -> String -> Int -> Int -> ({ "Marker" :: String, "NextMarker" :: NullOrUndefined (String), "MaxItems" :: Int, "IsTruncated" :: Boolean, "Quantity" :: Int, "Items" :: NullOrUndefined (StreamingDistributionSummaryList) } -> { "Marker" :: String, "NextMarker" :: NullOrUndefined (String), "MaxItems" :: Int, "IsTruncated" :: Boolean, "Quantity" :: Int, "Items" :: NullOrUndefined (StreamingDistributionSummaryList) }) -> StreamingDistributionList
```

Constructs StreamingDistributionList's fields from required parameters

#### `StreamingDistributionNotDisabled`

``` purescript
newtype StreamingDistributionNotDisabled
  = StreamingDistributionNotDisabled { "Message" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype StreamingDistributionNotDisabled _
Generic StreamingDistributionNotDisabled _
Show StreamingDistributionNotDisabled
Decode StreamingDistributionNotDisabled
Encode StreamingDistributionNotDisabled
```

#### `newStreamingDistributionNotDisabled`

``` purescript
newStreamingDistributionNotDisabled :: StreamingDistributionNotDisabled
```

Constructs StreamingDistributionNotDisabled from required parameters

#### `newStreamingDistributionNotDisabled'`

``` purescript
newStreamingDistributionNotDisabled' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> StreamingDistributionNotDisabled
```

Constructs StreamingDistributionNotDisabled's fields from required parameters

#### `StreamingDistributionSummary`

``` purescript
newtype StreamingDistributionSummary
  = StreamingDistributionSummary { "Id" :: String, "ARN" :: String, "Status" :: String, "LastModifiedTime" :: Timestamp, "DomainName" :: String, "S3Origin" :: S3Origin, "Aliases" :: Aliases, "TrustedSigners" :: TrustedSigners, "Comment" :: String, "PriceClass" :: PriceClass, "Enabled" :: Boolean }
```

<p> A summary of the information for an Amazon CloudFront streaming distribution.</p>

##### Instances
``` purescript
Newtype StreamingDistributionSummary _
Generic StreamingDistributionSummary _
Show StreamingDistributionSummary
Decode StreamingDistributionSummary
Encode StreamingDistributionSummary
```

#### `newStreamingDistributionSummary`

``` purescript
newStreamingDistributionSummary :: String -> Aliases -> String -> String -> Boolean -> String -> Timestamp -> PriceClass -> S3Origin -> String -> TrustedSigners -> StreamingDistributionSummary
```

Constructs StreamingDistributionSummary from required parameters

#### `newStreamingDistributionSummary'`

``` purescript
newStreamingDistributionSummary' :: String -> Aliases -> String -> String -> Boolean -> String -> Timestamp -> PriceClass -> S3Origin -> String -> TrustedSigners -> ({ "Id" :: String, "ARN" :: String, "Status" :: String, "LastModifiedTime" :: Timestamp, "DomainName" :: String, "S3Origin" :: S3Origin, "Aliases" :: Aliases, "TrustedSigners" :: TrustedSigners, "Comment" :: String, "PriceClass" :: PriceClass, "Enabled" :: Boolean } -> { "Id" :: String, "ARN" :: String, "Status" :: String, "LastModifiedTime" :: Timestamp, "DomainName" :: String, "S3Origin" :: S3Origin, "Aliases" :: Aliases, "TrustedSigners" :: TrustedSigners, "Comment" :: String, "PriceClass" :: PriceClass, "Enabled" :: Boolean }) -> StreamingDistributionSummary
```

Constructs StreamingDistributionSummary's fields from required parameters

#### `StreamingDistributionSummaryList`

``` purescript
newtype StreamingDistributionSummaryList
  = StreamingDistributionSummaryList (Array StreamingDistributionSummary)
```

##### Instances
``` purescript
Newtype StreamingDistributionSummaryList _
Generic StreamingDistributionSummaryList _
Show StreamingDistributionSummaryList
Decode StreamingDistributionSummaryList
Encode StreamingDistributionSummaryList
```

#### `StreamingLoggingConfig`

``` purescript
newtype StreamingLoggingConfig
  = StreamingLoggingConfig { "Enabled" :: Boolean, "Bucket" :: String, "Prefix" :: String }
```

<p>A complex type that controls whether access logs are written for this streaming distribution.</p>

##### Instances
``` purescript
Newtype StreamingLoggingConfig _
Generic StreamingLoggingConfig _
Show StreamingLoggingConfig
Decode StreamingLoggingConfig
Encode StreamingLoggingConfig
```

#### `newStreamingLoggingConfig`

``` purescript
newStreamingLoggingConfig :: String -> Boolean -> String -> StreamingLoggingConfig
```

Constructs StreamingLoggingConfig from required parameters

#### `newStreamingLoggingConfig'`

``` purescript
newStreamingLoggingConfig' :: String -> Boolean -> String -> ({ "Enabled" :: Boolean, "Bucket" :: String, "Prefix" :: String } -> { "Enabled" :: Boolean, "Bucket" :: String, "Prefix" :: String }) -> StreamingLoggingConfig
```

Constructs StreamingLoggingConfig's fields from required parameters

#### `Tag`

``` purescript
newtype Tag
  = Tag { "Key" :: TagKey, "Value" :: NullOrUndefined (TagValue) }
```

<p> A complex type that contains <code>Tag</code> key and <code>Tag</code> value.</p>

##### Instances
``` purescript
Newtype Tag _
Generic Tag _
Show Tag
Decode Tag
Encode Tag
```

#### `newTag`

``` purescript
newTag :: TagKey -> Tag
```

Constructs Tag from required parameters

#### `newTag'`

``` purescript
newTag' :: TagKey -> ({ "Key" :: TagKey, "Value" :: NullOrUndefined (TagValue) } -> { "Key" :: TagKey, "Value" :: NullOrUndefined (TagValue) }) -> Tag
```

Constructs Tag's fields from required parameters

#### `TagKey`

``` purescript
newtype TagKey
  = TagKey String
```

<p> A string that contains <code>Tag</code> key.</p> <p>The string length should be between 1 and 128 characters. Valid characters include <code>a-z</code>, <code>A-Z</code>, <code>0-9</code>, space, and the special characters <code>_ - . : / = + @</code>.</p>

##### Instances
``` purescript
Newtype TagKey _
Generic TagKey _
Show TagKey
Decode TagKey
Encode TagKey
```

#### `TagKeyList`

``` purescript
newtype TagKeyList
  = TagKeyList (Array TagKey)
```

##### Instances
``` purescript
Newtype TagKeyList _
Generic TagKeyList _
Show TagKeyList
Decode TagKeyList
Encode TagKeyList
```

#### `TagKeys`

``` purescript
newtype TagKeys
  = TagKeys { "Items" :: NullOrUndefined (TagKeyList) }
```

<p> A complex type that contains zero or more <code>Tag</code> elements.</p>

##### Instances
``` purescript
Newtype TagKeys _
Generic TagKeys _
Show TagKeys
Decode TagKeys
Encode TagKeys
```

#### `newTagKeys`

``` purescript
newTagKeys :: TagKeys
```

Constructs TagKeys from required parameters

#### `newTagKeys'`

``` purescript
newTagKeys' :: ({ "Items" :: NullOrUndefined (TagKeyList) } -> { "Items" :: NullOrUndefined (TagKeyList) }) -> TagKeys
```

Constructs TagKeys's fields from required parameters

#### `TagList`

``` purescript
newtype TagList
  = TagList (Array Tag)
```

##### Instances
``` purescript
Newtype TagList _
Generic TagList _
Show TagList
Decode TagList
Encode TagList
```

#### `TagResourceRequest`

``` purescript
newtype TagResourceRequest
  = TagResourceRequest { "Resource" :: ResourceARN, "Tags" :: Tags }
```

<p> The request to add tags to a CloudFront resource.</p>

##### Instances
``` purescript
Newtype TagResourceRequest _
Generic TagResourceRequest _
Show TagResourceRequest
Decode TagResourceRequest
Encode TagResourceRequest
```

#### `newTagResourceRequest`

``` purescript
newTagResourceRequest :: ResourceARN -> Tags -> TagResourceRequest
```

Constructs TagResourceRequest from required parameters

#### `newTagResourceRequest'`

``` purescript
newTagResourceRequest' :: ResourceARN -> Tags -> ({ "Resource" :: ResourceARN, "Tags" :: Tags } -> { "Resource" :: ResourceARN, "Tags" :: Tags }) -> TagResourceRequest
```

Constructs TagResourceRequest's fields from required parameters

#### `TagValue`

``` purescript
newtype TagValue
  = TagValue String
```

##### Instances
``` purescript
Newtype TagValue _
Generic TagValue _
Show TagValue
Decode TagValue
Encode TagValue
```

#### `Tags`

``` purescript
newtype Tags
  = Tags { "Items" :: NullOrUndefined (TagList) }
```

<p> A complex type that contains zero or more <code>Tag</code> elements.</p>

##### Instances
``` purescript
Newtype Tags _
Generic Tags _
Show Tags
Decode Tags
Encode Tags
```

#### `newTags`

``` purescript
newTags :: Tags
```

Constructs Tags from required parameters

#### `newTags'`

``` purescript
newTags' :: ({ "Items" :: NullOrUndefined (TagList) } -> { "Items" :: NullOrUndefined (TagList) }) -> Tags
```

Constructs Tags's fields from required parameters

#### `TooManyCacheBehaviors`

``` purescript
newtype TooManyCacheBehaviors
  = TooManyCacheBehaviors { "Message" :: NullOrUndefined (String) }
```

<p>You cannot create more cache behaviors for the distribution.</p>

##### Instances
``` purescript
Newtype TooManyCacheBehaviors _
Generic TooManyCacheBehaviors _
Show TooManyCacheBehaviors
Decode TooManyCacheBehaviors
Encode TooManyCacheBehaviors
```

#### `newTooManyCacheBehaviors`

``` purescript
newTooManyCacheBehaviors :: TooManyCacheBehaviors
```

Constructs TooManyCacheBehaviors from required parameters

#### `newTooManyCacheBehaviors'`

``` purescript
newTooManyCacheBehaviors' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> TooManyCacheBehaviors
```

Constructs TooManyCacheBehaviors's fields from required parameters

#### `TooManyCertificates`

``` purescript
newtype TooManyCertificates
  = TooManyCertificates { "Message" :: NullOrUndefined (String) }
```

<p>You cannot create anymore custom SSL/TLS certificates.</p>

##### Instances
``` purescript
Newtype TooManyCertificates _
Generic TooManyCertificates _
Show TooManyCertificates
Decode TooManyCertificates
Encode TooManyCertificates
```

#### `newTooManyCertificates`

``` purescript
newTooManyCertificates :: TooManyCertificates
```

Constructs TooManyCertificates from required parameters

#### `newTooManyCertificates'`

``` purescript
newTooManyCertificates' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> TooManyCertificates
```

Constructs TooManyCertificates's fields from required parameters

#### `TooManyCloudFrontOriginAccessIdentities`

``` purescript
newtype TooManyCloudFrontOriginAccessIdentities
  = TooManyCloudFrontOriginAccessIdentities { "Message" :: NullOrUndefined (String) }
```

<p>Processing your request would cause you to exceed the maximum number of origin access identities allowed.</p>

##### Instances
``` purescript
Newtype TooManyCloudFrontOriginAccessIdentities _
Generic TooManyCloudFrontOriginAccessIdentities _
Show TooManyCloudFrontOriginAccessIdentities
Decode TooManyCloudFrontOriginAccessIdentities
Encode TooManyCloudFrontOriginAccessIdentities
```

#### `newTooManyCloudFrontOriginAccessIdentities`

``` purescript
newTooManyCloudFrontOriginAccessIdentities :: TooManyCloudFrontOriginAccessIdentities
```

Constructs TooManyCloudFrontOriginAccessIdentities from required parameters

#### `newTooManyCloudFrontOriginAccessIdentities'`

``` purescript
newTooManyCloudFrontOriginAccessIdentities' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> TooManyCloudFrontOriginAccessIdentities
```

Constructs TooManyCloudFrontOriginAccessIdentities's fields from required parameters

#### `TooManyCookieNamesInWhiteList`

``` purescript
newtype TooManyCookieNamesInWhiteList
  = TooManyCookieNamesInWhiteList { "Message" :: NullOrUndefined (String) }
```

<p>Your request contains more cookie names in the whitelist than are allowed per cache behavior.</p>

##### Instances
``` purescript
Newtype TooManyCookieNamesInWhiteList _
Generic TooManyCookieNamesInWhiteList _
Show TooManyCookieNamesInWhiteList
Decode TooManyCookieNamesInWhiteList
Encode TooManyCookieNamesInWhiteList
```

#### `newTooManyCookieNamesInWhiteList`

``` purescript
newTooManyCookieNamesInWhiteList :: TooManyCookieNamesInWhiteList
```

Constructs TooManyCookieNamesInWhiteList from required parameters

#### `newTooManyCookieNamesInWhiteList'`

``` purescript
newTooManyCookieNamesInWhiteList' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> TooManyCookieNamesInWhiteList
```

Constructs TooManyCookieNamesInWhiteList's fields from required parameters

#### `TooManyDistributionCNAMEs`

``` purescript
newtype TooManyDistributionCNAMEs
  = TooManyDistributionCNAMEs { "Message" :: NullOrUndefined (String) }
```

<p>Your request contains more CNAMEs than are allowed per distribution.</p>

##### Instances
``` purescript
Newtype TooManyDistributionCNAMEs _
Generic TooManyDistributionCNAMEs _
Show TooManyDistributionCNAMEs
Decode TooManyDistributionCNAMEs
Encode TooManyDistributionCNAMEs
```

#### `newTooManyDistributionCNAMEs`

``` purescript
newTooManyDistributionCNAMEs :: TooManyDistributionCNAMEs
```

Constructs TooManyDistributionCNAMEs from required parameters

#### `newTooManyDistributionCNAMEs'`

``` purescript
newTooManyDistributionCNAMEs' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> TooManyDistributionCNAMEs
```

Constructs TooManyDistributionCNAMEs's fields from required parameters

#### `TooManyDistributions`

``` purescript
newtype TooManyDistributions
  = TooManyDistributions { "Message" :: NullOrUndefined (String) }
```

<p>Processing your request would cause you to exceed the maximum number of distributions allowed.</p>

##### Instances
``` purescript
Newtype TooManyDistributions _
Generic TooManyDistributions _
Show TooManyDistributions
Decode TooManyDistributions
Encode TooManyDistributions
```

#### `newTooManyDistributions`

``` purescript
newTooManyDistributions :: TooManyDistributions
```

Constructs TooManyDistributions from required parameters

#### `newTooManyDistributions'`

``` purescript
newTooManyDistributions' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> TooManyDistributions
```

Constructs TooManyDistributions's fields from required parameters

#### `TooManyDistributionsWithLambdaAssociations`

``` purescript
newtype TooManyDistributionsWithLambdaAssociations
  = TooManyDistributionsWithLambdaAssociations { "Message" :: NullOrUndefined (String) }
```

<p>Processing your request would cause the maximum number of distributions with Lambda function associations per owner to be exceeded.</p>

##### Instances
``` purescript
Newtype TooManyDistributionsWithLambdaAssociations _
Generic TooManyDistributionsWithLambdaAssociations _
Show TooManyDistributionsWithLambdaAssociations
Decode TooManyDistributionsWithLambdaAssociations
Encode TooManyDistributionsWithLambdaAssociations
```

#### `newTooManyDistributionsWithLambdaAssociations`

``` purescript
newTooManyDistributionsWithLambdaAssociations :: TooManyDistributionsWithLambdaAssociations
```

Constructs TooManyDistributionsWithLambdaAssociations from required parameters

#### `newTooManyDistributionsWithLambdaAssociations'`

``` purescript
newTooManyDistributionsWithLambdaAssociations' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> TooManyDistributionsWithLambdaAssociations
```

Constructs TooManyDistributionsWithLambdaAssociations's fields from required parameters

#### `TooManyHeadersInForwardedValues`

``` purescript
newtype TooManyHeadersInForwardedValues
  = TooManyHeadersInForwardedValues { "Message" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype TooManyHeadersInForwardedValues _
Generic TooManyHeadersInForwardedValues _
Show TooManyHeadersInForwardedValues
Decode TooManyHeadersInForwardedValues
Encode TooManyHeadersInForwardedValues
```

#### `newTooManyHeadersInForwardedValues`

``` purescript
newTooManyHeadersInForwardedValues :: TooManyHeadersInForwardedValues
```

Constructs TooManyHeadersInForwardedValues from required parameters

#### `newTooManyHeadersInForwardedValues'`

``` purescript
newTooManyHeadersInForwardedValues' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> TooManyHeadersInForwardedValues
```

Constructs TooManyHeadersInForwardedValues's fields from required parameters

#### `TooManyInvalidationsInProgress`

``` purescript
newtype TooManyInvalidationsInProgress
  = TooManyInvalidationsInProgress { "Message" :: NullOrUndefined (String) }
```

<p>You have exceeded the maximum number of allowable InProgress invalidation batch requests, or invalidation objects.</p>

##### Instances
``` purescript
Newtype TooManyInvalidationsInProgress _
Generic TooManyInvalidationsInProgress _
Show TooManyInvalidationsInProgress
Decode TooManyInvalidationsInProgress
Encode TooManyInvalidationsInProgress
```

#### `newTooManyInvalidationsInProgress`

``` purescript
newTooManyInvalidationsInProgress :: TooManyInvalidationsInProgress
```

Constructs TooManyInvalidationsInProgress from required parameters

#### `newTooManyInvalidationsInProgress'`

``` purescript
newTooManyInvalidationsInProgress' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> TooManyInvalidationsInProgress
```

Constructs TooManyInvalidationsInProgress's fields from required parameters

#### `TooManyLambdaFunctionAssociations`

``` purescript
newtype TooManyLambdaFunctionAssociations
  = TooManyLambdaFunctionAssociations { "Message" :: NullOrUndefined (String) }
```

<p>Your request contains more Lambda function associations than are allowed per distribution.</p>

##### Instances
``` purescript
Newtype TooManyLambdaFunctionAssociations _
Generic TooManyLambdaFunctionAssociations _
Show TooManyLambdaFunctionAssociations
Decode TooManyLambdaFunctionAssociations
Encode TooManyLambdaFunctionAssociations
```

#### `newTooManyLambdaFunctionAssociations`

``` purescript
newTooManyLambdaFunctionAssociations :: TooManyLambdaFunctionAssociations
```

Constructs TooManyLambdaFunctionAssociations from required parameters

#### `newTooManyLambdaFunctionAssociations'`

``` purescript
newTooManyLambdaFunctionAssociations' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> TooManyLambdaFunctionAssociations
```

Constructs TooManyLambdaFunctionAssociations's fields from required parameters

#### `TooManyOriginCustomHeaders`

``` purescript
newtype TooManyOriginCustomHeaders
  = TooManyOriginCustomHeaders { "Message" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype TooManyOriginCustomHeaders _
Generic TooManyOriginCustomHeaders _
Show TooManyOriginCustomHeaders
Decode TooManyOriginCustomHeaders
Encode TooManyOriginCustomHeaders
```

#### `newTooManyOriginCustomHeaders`

``` purescript
newTooManyOriginCustomHeaders :: TooManyOriginCustomHeaders
```

Constructs TooManyOriginCustomHeaders from required parameters

#### `newTooManyOriginCustomHeaders'`

``` purescript
newTooManyOriginCustomHeaders' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> TooManyOriginCustomHeaders
```

Constructs TooManyOriginCustomHeaders's fields from required parameters

#### `TooManyOrigins`

``` purescript
newtype TooManyOrigins
  = TooManyOrigins { "Message" :: NullOrUndefined (String) }
```

<p>You cannot create more origins for the distribution.</p>

##### Instances
``` purescript
Newtype TooManyOrigins _
Generic TooManyOrigins _
Show TooManyOrigins
Decode TooManyOrigins
Encode TooManyOrigins
```

#### `newTooManyOrigins`

``` purescript
newTooManyOrigins :: TooManyOrigins
```

Constructs TooManyOrigins from required parameters

#### `newTooManyOrigins'`

``` purescript
newTooManyOrigins' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> TooManyOrigins
```

Constructs TooManyOrigins's fields from required parameters

#### `TooManyQueryStringParameters`

``` purescript
newtype TooManyQueryStringParameters
  = TooManyQueryStringParameters { "Message" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype TooManyQueryStringParameters _
Generic TooManyQueryStringParameters _
Show TooManyQueryStringParameters
Decode TooManyQueryStringParameters
Encode TooManyQueryStringParameters
```

#### `newTooManyQueryStringParameters`

``` purescript
newTooManyQueryStringParameters :: TooManyQueryStringParameters
```

Constructs TooManyQueryStringParameters from required parameters

#### `newTooManyQueryStringParameters'`

``` purescript
newTooManyQueryStringParameters' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> TooManyQueryStringParameters
```

Constructs TooManyQueryStringParameters's fields from required parameters

#### `TooManyStreamingDistributionCNAMEs`

``` purescript
newtype TooManyStreamingDistributionCNAMEs
  = TooManyStreamingDistributionCNAMEs { "Message" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype TooManyStreamingDistributionCNAMEs _
Generic TooManyStreamingDistributionCNAMEs _
Show TooManyStreamingDistributionCNAMEs
Decode TooManyStreamingDistributionCNAMEs
Encode TooManyStreamingDistributionCNAMEs
```

#### `newTooManyStreamingDistributionCNAMEs`

``` purescript
newTooManyStreamingDistributionCNAMEs :: TooManyStreamingDistributionCNAMEs
```

Constructs TooManyStreamingDistributionCNAMEs from required parameters

#### `newTooManyStreamingDistributionCNAMEs'`

``` purescript
newTooManyStreamingDistributionCNAMEs' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> TooManyStreamingDistributionCNAMEs
```

Constructs TooManyStreamingDistributionCNAMEs's fields from required parameters

#### `TooManyStreamingDistributions`

``` purescript
newtype TooManyStreamingDistributions
  = TooManyStreamingDistributions { "Message" :: NullOrUndefined (String) }
```

<p>Processing your request would cause you to exceed the maximum number of streaming distributions allowed.</p>

##### Instances
``` purescript
Newtype TooManyStreamingDistributions _
Generic TooManyStreamingDistributions _
Show TooManyStreamingDistributions
Decode TooManyStreamingDistributions
Encode TooManyStreamingDistributions
```

#### `newTooManyStreamingDistributions`

``` purescript
newTooManyStreamingDistributions :: TooManyStreamingDistributions
```

Constructs TooManyStreamingDistributions from required parameters

#### `newTooManyStreamingDistributions'`

``` purescript
newTooManyStreamingDistributions' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> TooManyStreamingDistributions
```

Constructs TooManyStreamingDistributions's fields from required parameters

#### `TooManyTrustedSigners`

``` purescript
newtype TooManyTrustedSigners
  = TooManyTrustedSigners { "Message" :: NullOrUndefined (String) }
```

<p>Your request contains more trusted signers than are allowed per distribution.</p>

##### Instances
``` purescript
Newtype TooManyTrustedSigners _
Generic TooManyTrustedSigners _
Show TooManyTrustedSigners
Decode TooManyTrustedSigners
Encode TooManyTrustedSigners
```

#### `newTooManyTrustedSigners`

``` purescript
newTooManyTrustedSigners :: TooManyTrustedSigners
```

Constructs TooManyTrustedSigners from required parameters

#### `newTooManyTrustedSigners'`

``` purescript
newTooManyTrustedSigners' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> TooManyTrustedSigners
```

Constructs TooManyTrustedSigners's fields from required parameters

#### `TrustedSignerDoesNotExist`

``` purescript
newtype TrustedSignerDoesNotExist
  = TrustedSignerDoesNotExist { "Message" :: NullOrUndefined (String) }
```

<p>One or more of your trusted signers do not exist.</p>

##### Instances
``` purescript
Newtype TrustedSignerDoesNotExist _
Generic TrustedSignerDoesNotExist _
Show TrustedSignerDoesNotExist
Decode TrustedSignerDoesNotExist
Encode TrustedSignerDoesNotExist
```

#### `newTrustedSignerDoesNotExist`

``` purescript
newTrustedSignerDoesNotExist :: TrustedSignerDoesNotExist
```

Constructs TrustedSignerDoesNotExist from required parameters

#### `newTrustedSignerDoesNotExist'`

``` purescript
newTrustedSignerDoesNotExist' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> TrustedSignerDoesNotExist
```

Constructs TrustedSignerDoesNotExist's fields from required parameters

#### `TrustedSigners`

``` purescript
newtype TrustedSigners
  = TrustedSigners { "Enabled" :: Boolean, "Quantity" :: Int, "Items" :: NullOrUndefined (AwsAccountNumberList) }
```

<p>A complex type that specifies the AWS accounts, if any, that you want to allow to create signed URLs for private content.</p> <p>If you want to require signed URLs in requests for objects in the target origin that match the <code>PathPattern</code> for this cache behavior, specify <code>true</code> for <code>Enabled</code>, and specify the applicable values for <code>Quantity</code> and <code>Items</code>. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving Private Content through CloudFront</a> in the <i>Amazon Amazon CloudFront Developer Guide</i>.</p> <p>If you don't want to require signed URLs in requests for objects that match <code>PathPattern</code>, specify <code>false</code> for <code>Enabled</code> and <code>0</code> for <code>Quantity</code>. Omit <code>Items</code>.</p> <p>To add, change, or remove one or more trusted signers, change <code>Enabled</code> to <code>true</code> (if it's currently <code>false</code>), change <code>Quantity</code> as applicable, and specify all of the trusted signers that you want to include in the updated distribution.</p> <p>For more information about updating the distribution configuration, see <a>DistributionConfig</a> .</p>

##### Instances
``` purescript
Newtype TrustedSigners _
Generic TrustedSigners _
Show TrustedSigners
Decode TrustedSigners
Encode TrustedSigners
```

#### `newTrustedSigners`

``` purescript
newTrustedSigners :: Boolean -> Int -> TrustedSigners
```

Constructs TrustedSigners from required parameters

#### `newTrustedSigners'`

``` purescript
newTrustedSigners' :: Boolean -> Int -> ({ "Enabled" :: Boolean, "Quantity" :: Int, "Items" :: NullOrUndefined (AwsAccountNumberList) } -> { "Enabled" :: Boolean, "Quantity" :: Int, "Items" :: NullOrUndefined (AwsAccountNumberList) }) -> TrustedSigners
```

Constructs TrustedSigners's fields from required parameters

#### `UntagResourceRequest`

``` purescript
newtype UntagResourceRequest
  = UntagResourceRequest { "Resource" :: ResourceARN, "TagKeys" :: TagKeys }
```

<p> The request to remove tags from a CloudFront resource.</p>

##### Instances
``` purescript
Newtype UntagResourceRequest _
Generic UntagResourceRequest _
Show UntagResourceRequest
Decode UntagResourceRequest
Encode UntagResourceRequest
```

#### `newUntagResourceRequest`

``` purescript
newUntagResourceRequest :: ResourceARN -> TagKeys -> UntagResourceRequest
```

Constructs UntagResourceRequest from required parameters

#### `newUntagResourceRequest'`

``` purescript
newUntagResourceRequest' :: ResourceARN -> TagKeys -> ({ "Resource" :: ResourceARN, "TagKeys" :: TagKeys } -> { "Resource" :: ResourceARN, "TagKeys" :: TagKeys }) -> UntagResourceRequest
```

Constructs UntagResourceRequest's fields from required parameters

#### `UpdateCloudFrontOriginAccessIdentityRequest`

``` purescript
newtype UpdateCloudFrontOriginAccessIdentityRequest
  = UpdateCloudFrontOriginAccessIdentityRequest { "CloudFrontOriginAccessIdentityConfig" :: CloudFrontOriginAccessIdentityConfig, "Id" :: String, "IfMatch" :: NullOrUndefined (String) }
```

<p>The request to update an origin access identity.</p>

##### Instances
``` purescript
Newtype UpdateCloudFrontOriginAccessIdentityRequest _
Generic UpdateCloudFrontOriginAccessIdentityRequest _
Show UpdateCloudFrontOriginAccessIdentityRequest
Decode UpdateCloudFrontOriginAccessIdentityRequest
Encode UpdateCloudFrontOriginAccessIdentityRequest
```

#### `newUpdateCloudFrontOriginAccessIdentityRequest`

``` purescript
newUpdateCloudFrontOriginAccessIdentityRequest :: CloudFrontOriginAccessIdentityConfig -> String -> UpdateCloudFrontOriginAccessIdentityRequest
```

Constructs UpdateCloudFrontOriginAccessIdentityRequest from required parameters

#### `newUpdateCloudFrontOriginAccessIdentityRequest'`

``` purescript
newUpdateCloudFrontOriginAccessIdentityRequest' :: CloudFrontOriginAccessIdentityConfig -> String -> ({ "CloudFrontOriginAccessIdentityConfig" :: CloudFrontOriginAccessIdentityConfig, "Id" :: String, "IfMatch" :: NullOrUndefined (String) } -> { "CloudFrontOriginAccessIdentityConfig" :: CloudFrontOriginAccessIdentityConfig, "Id" :: String, "IfMatch" :: NullOrUndefined (String) }) -> UpdateCloudFrontOriginAccessIdentityRequest
```

Constructs UpdateCloudFrontOriginAccessIdentityRequest's fields from required parameters

#### `UpdateCloudFrontOriginAccessIdentityResult`

``` purescript
newtype UpdateCloudFrontOriginAccessIdentityResult
  = UpdateCloudFrontOriginAccessIdentityResult { "CloudFrontOriginAccessIdentity" :: NullOrUndefined (CloudFrontOriginAccessIdentity), "ETag" :: NullOrUndefined (String) }
```

<p>The returned result of the corresponding request.</p>

##### Instances
``` purescript
Newtype UpdateCloudFrontOriginAccessIdentityResult _
Generic UpdateCloudFrontOriginAccessIdentityResult _
Show UpdateCloudFrontOriginAccessIdentityResult
Decode UpdateCloudFrontOriginAccessIdentityResult
Encode UpdateCloudFrontOriginAccessIdentityResult
```

#### `newUpdateCloudFrontOriginAccessIdentityResult`

``` purescript
newUpdateCloudFrontOriginAccessIdentityResult :: UpdateCloudFrontOriginAccessIdentityResult
```

Constructs UpdateCloudFrontOriginAccessIdentityResult from required parameters

#### `newUpdateCloudFrontOriginAccessIdentityResult'`

``` purescript
newUpdateCloudFrontOriginAccessIdentityResult' :: ({ "CloudFrontOriginAccessIdentity" :: NullOrUndefined (CloudFrontOriginAccessIdentity), "ETag" :: NullOrUndefined (String) } -> { "CloudFrontOriginAccessIdentity" :: NullOrUndefined (CloudFrontOriginAccessIdentity), "ETag" :: NullOrUndefined (String) }) -> UpdateCloudFrontOriginAccessIdentityResult
```

Constructs UpdateCloudFrontOriginAccessIdentityResult's fields from required parameters

#### `UpdateDistributionRequest`

``` purescript
newtype UpdateDistributionRequest
  = UpdateDistributionRequest { "DistributionConfig" :: DistributionConfig, "Id" :: String, "IfMatch" :: NullOrUndefined (String) }
```

<p>The request to update a distribution.</p>

##### Instances
``` purescript
Newtype UpdateDistributionRequest _
Generic UpdateDistributionRequest _
Show UpdateDistributionRequest
Decode UpdateDistributionRequest
Encode UpdateDistributionRequest
```

#### `newUpdateDistributionRequest`

``` purescript
newUpdateDistributionRequest :: DistributionConfig -> String -> UpdateDistributionRequest
```

Constructs UpdateDistributionRequest from required parameters

#### `newUpdateDistributionRequest'`

``` purescript
newUpdateDistributionRequest' :: DistributionConfig -> String -> ({ "DistributionConfig" :: DistributionConfig, "Id" :: String, "IfMatch" :: NullOrUndefined (String) } -> { "DistributionConfig" :: DistributionConfig, "Id" :: String, "IfMatch" :: NullOrUndefined (String) }) -> UpdateDistributionRequest
```

Constructs UpdateDistributionRequest's fields from required parameters

#### `UpdateDistributionResult`

``` purescript
newtype UpdateDistributionResult
  = UpdateDistributionResult { "Distribution" :: NullOrUndefined (Distribution), "ETag" :: NullOrUndefined (String) }
```

<p>The returned result of the corresponding request.</p>

##### Instances
``` purescript
Newtype UpdateDistributionResult _
Generic UpdateDistributionResult _
Show UpdateDistributionResult
Decode UpdateDistributionResult
Encode UpdateDistributionResult
```

#### `newUpdateDistributionResult`

``` purescript
newUpdateDistributionResult :: UpdateDistributionResult
```

Constructs UpdateDistributionResult from required parameters

#### `newUpdateDistributionResult'`

``` purescript
newUpdateDistributionResult' :: ({ "Distribution" :: NullOrUndefined (Distribution), "ETag" :: NullOrUndefined (String) } -> { "Distribution" :: NullOrUndefined (Distribution), "ETag" :: NullOrUndefined (String) }) -> UpdateDistributionResult
```

Constructs UpdateDistributionResult's fields from required parameters

#### `UpdateStreamingDistributionRequest`

``` purescript
newtype UpdateStreamingDistributionRequest
  = UpdateStreamingDistributionRequest { "StreamingDistributionConfig" :: StreamingDistributionConfig, "Id" :: String, "IfMatch" :: NullOrUndefined (String) }
```

<p>The request to update a streaming distribution.</p>

##### Instances
``` purescript
Newtype UpdateStreamingDistributionRequest _
Generic UpdateStreamingDistributionRequest _
Show UpdateStreamingDistributionRequest
Decode UpdateStreamingDistributionRequest
Encode UpdateStreamingDistributionRequest
```

#### `newUpdateStreamingDistributionRequest`

``` purescript
newUpdateStreamingDistributionRequest :: String -> StreamingDistributionConfig -> UpdateStreamingDistributionRequest
```

Constructs UpdateStreamingDistributionRequest from required parameters

#### `newUpdateStreamingDistributionRequest'`

``` purescript
newUpdateStreamingDistributionRequest' :: String -> StreamingDistributionConfig -> ({ "StreamingDistributionConfig" :: StreamingDistributionConfig, "Id" :: String, "IfMatch" :: NullOrUndefined (String) } -> { "StreamingDistributionConfig" :: StreamingDistributionConfig, "Id" :: String, "IfMatch" :: NullOrUndefined (String) }) -> UpdateStreamingDistributionRequest
```

Constructs UpdateStreamingDistributionRequest's fields from required parameters

#### `UpdateStreamingDistributionResult`

``` purescript
newtype UpdateStreamingDistributionResult
  = UpdateStreamingDistributionResult { "StreamingDistribution" :: NullOrUndefined (StreamingDistribution), "ETag" :: NullOrUndefined (String) }
```

<p>The returned result of the corresponding request.</p>

##### Instances
``` purescript
Newtype UpdateStreamingDistributionResult _
Generic UpdateStreamingDistributionResult _
Show UpdateStreamingDistributionResult
Decode UpdateStreamingDistributionResult
Encode UpdateStreamingDistributionResult
```

#### `newUpdateStreamingDistributionResult`

``` purescript
newUpdateStreamingDistributionResult :: UpdateStreamingDistributionResult
```

Constructs UpdateStreamingDistributionResult from required parameters

#### `newUpdateStreamingDistributionResult'`

``` purescript
newUpdateStreamingDistributionResult' :: ({ "StreamingDistribution" :: NullOrUndefined (StreamingDistribution), "ETag" :: NullOrUndefined (String) } -> { "StreamingDistribution" :: NullOrUndefined (StreamingDistribution), "ETag" :: NullOrUndefined (String) }) -> UpdateStreamingDistributionResult
```

Constructs UpdateStreamingDistributionResult's fields from required parameters

#### `ViewerCertificate`

``` purescript
newtype ViewerCertificate
  = ViewerCertificate { "CloudFrontDefaultCertificate" :: NullOrUndefined (Boolean), "IAMCertificateId" :: NullOrUndefined (String), "ACMCertificateArn" :: NullOrUndefined (String), "SSLSupportMethod" :: NullOrUndefined (SSLSupportMethod), "MinimumProtocolVersion" :: NullOrUndefined (MinimumProtocolVersion), "Certificate" :: NullOrUndefined (String), "CertificateSource" :: NullOrUndefined (CertificateSource) }
```

<p>A complex type that specifies the following:</p> <ul> <li> <p>Which SSL/TLS certificate to use when viewers request objects using HTTPS</p> </li> <li> <p>Whether you want CloudFront to use dedicated IP addresses or SNI when you're using alternate domain names in your object names</p> </li> <li> <p>The minimum protocol version that you want CloudFront to use when communicating with viewers</p> </li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/SecureConnections.html">Using an HTTPS Connection to Access Your Objects</a> in the <i>Amazon Amazon CloudFront Developer Guide</i>.</p>

##### Instances
``` purescript
Newtype ViewerCertificate _
Generic ViewerCertificate _
Show ViewerCertificate
Decode ViewerCertificate
Encode ViewerCertificate
```

#### `newViewerCertificate`

``` purescript
newViewerCertificate :: ViewerCertificate
```

Constructs ViewerCertificate from required parameters

#### `newViewerCertificate'`

``` purescript
newViewerCertificate' :: ({ "CloudFrontDefaultCertificate" :: NullOrUndefined (Boolean), "IAMCertificateId" :: NullOrUndefined (String), "ACMCertificateArn" :: NullOrUndefined (String), "SSLSupportMethod" :: NullOrUndefined (SSLSupportMethod), "MinimumProtocolVersion" :: NullOrUndefined (MinimumProtocolVersion), "Certificate" :: NullOrUndefined (String), "CertificateSource" :: NullOrUndefined (CertificateSource) } -> { "CloudFrontDefaultCertificate" :: NullOrUndefined (Boolean), "IAMCertificateId" :: NullOrUndefined (String), "ACMCertificateArn" :: NullOrUndefined (String), "SSLSupportMethod" :: NullOrUndefined (SSLSupportMethod), "MinimumProtocolVersion" :: NullOrUndefined (MinimumProtocolVersion), "Certificate" :: NullOrUndefined (String), "CertificateSource" :: NullOrUndefined (CertificateSource) }) -> ViewerCertificate
```

Constructs ViewerCertificate's fields from required parameters

#### `ViewerProtocolPolicy`

``` purescript
newtype ViewerProtocolPolicy
  = ViewerProtocolPolicy String
```

##### Instances
``` purescript
Newtype ViewerProtocolPolicy _
Generic ViewerProtocolPolicy _
Show ViewerProtocolPolicy
Decode ViewerProtocolPolicy
Encode ViewerProtocolPolicy
```


