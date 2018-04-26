
module AWS.CloudFront.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


-- | <p>Access denied.</p>
newtype AccessDenied = AccessDenied 
  { "Message" :: Maybe (String)
  }
derive instance newtypeAccessDenied :: Newtype AccessDenied _
derive instance repGenericAccessDenied :: Generic AccessDenied _
instance showAccessDenied :: Show AccessDenied where show = genericShow
instance decodeAccessDenied :: Decode AccessDenied where decode = genericDecode options
instance encodeAccessDenied :: Encode AccessDenied where encode = genericEncode options

-- | Constructs AccessDenied from required parameters
newAccessDenied :: AccessDenied
newAccessDenied  = AccessDenied { "Message": Nothing }

-- | Constructs AccessDenied's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAccessDenied' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> AccessDenied
newAccessDenied'  customize = (AccessDenied <<< customize) { "Message": Nothing }



-- | <p>A complex type that lists the AWS accounts, if any, that you included in the <code>TrustedSigners</code> complex type for this distribution. These are the accounts that you want to allow to create signed URLs for private content.</p> <p>The <code>Signer</code> complex type lists the AWS account number of the trusted signer or <code>self</code> if the signer is the AWS account that created the distribution. The <code>Signer</code> element also includes the IDs of any active CloudFront key pairs that are associated with the trusted signer's AWS account. If no <code>KeyPairId</code> element appears for a <code>Signer</code>, that signer can't create signed URLs. </p> <p>For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving Private Content through CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
newtype ActiveTrustedSigners = ActiveTrustedSigners 
  { "Enabled" :: (Boolean)
  , "Quantity" :: (Int)
  , "Items" :: Maybe (SignerList)
  }
derive instance newtypeActiveTrustedSigners :: Newtype ActiveTrustedSigners _
derive instance repGenericActiveTrustedSigners :: Generic ActiveTrustedSigners _
instance showActiveTrustedSigners :: Show ActiveTrustedSigners where show = genericShow
instance decodeActiveTrustedSigners :: Decode ActiveTrustedSigners where decode = genericDecode options
instance encodeActiveTrustedSigners :: Encode ActiveTrustedSigners where encode = genericEncode options

-- | Constructs ActiveTrustedSigners from required parameters
newActiveTrustedSigners :: Boolean -> Int -> ActiveTrustedSigners
newActiveTrustedSigners _Enabled _Quantity = ActiveTrustedSigners { "Enabled": _Enabled, "Quantity": _Quantity, "Items": Nothing }

-- | Constructs ActiveTrustedSigners's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newActiveTrustedSigners' :: Boolean -> Int -> ( { "Enabled" :: (Boolean) , "Quantity" :: (Int) , "Items" :: Maybe (SignerList) } -> {"Enabled" :: (Boolean) , "Quantity" :: (Int) , "Items" :: Maybe (SignerList) } ) -> ActiveTrustedSigners
newActiveTrustedSigners' _Enabled _Quantity customize = (ActiveTrustedSigners <<< customize) { "Enabled": _Enabled, "Quantity": _Quantity, "Items": Nothing }



newtype AliasList = AliasList (Array String)
derive instance newtypeAliasList :: Newtype AliasList _
derive instance repGenericAliasList :: Generic AliasList _
instance showAliasList :: Show AliasList where show = genericShow
instance decodeAliasList :: Decode AliasList where decode = genericDecode options
instance encodeAliasList :: Encode AliasList where encode = genericEncode options



-- | <p>A complex type that contains information about CNAMEs (alternate domain names), if any, for this distribution. </p>
newtype Aliases = Aliases 
  { "Quantity" :: (Int)
  , "Items" :: Maybe (AliasList)
  }
derive instance newtypeAliases :: Newtype Aliases _
derive instance repGenericAliases :: Generic Aliases _
instance showAliases :: Show Aliases where show = genericShow
instance decodeAliases :: Decode Aliases where decode = genericDecode options
instance encodeAliases :: Encode Aliases where encode = genericEncode options

-- | Constructs Aliases from required parameters
newAliases :: Int -> Aliases
newAliases _Quantity = Aliases { "Quantity": _Quantity, "Items": Nothing }

-- | Constructs Aliases's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAliases' :: Int -> ( { "Quantity" :: (Int) , "Items" :: Maybe (AliasList) } -> {"Quantity" :: (Int) , "Items" :: Maybe (AliasList) } ) -> Aliases
newAliases' _Quantity customize = (Aliases <<< customize) { "Quantity": _Quantity, "Items": Nothing }



-- | <p>A complex type that controls which HTTP methods CloudFront processes and forwards to your Amazon S3 bucket or your custom origin. There are three choices:</p> <ul> <li> <p>CloudFront forwards only <code>GET</code> and <code>HEAD</code> requests.</p> </li> <li> <p>CloudFront forwards only <code>GET</code>, <code>HEAD</code>, and <code>OPTIONS</code> requests.</p> </li> <li> <p>CloudFront forwards <code>GET, HEAD, OPTIONS, PUT, PATCH, POST</code>, and <code>DELETE</code> requests.</p> </li> </ul> <p>If you pick the third choice, you may need to restrict access to your Amazon S3 bucket or to your custom origin so users can't perform operations that you don't want them to. For example, you might not want users to have permissions to delete objects from your origin.</p>
newtype AllowedMethods = AllowedMethods 
  { "Quantity" :: (Int)
  , "Items" :: (MethodsList)
  , "CachedMethods" :: Maybe (CachedMethods)
  }
derive instance newtypeAllowedMethods :: Newtype AllowedMethods _
derive instance repGenericAllowedMethods :: Generic AllowedMethods _
instance showAllowedMethods :: Show AllowedMethods where show = genericShow
instance decodeAllowedMethods :: Decode AllowedMethods where decode = genericDecode options
instance encodeAllowedMethods :: Encode AllowedMethods where encode = genericEncode options

-- | Constructs AllowedMethods from required parameters
newAllowedMethods :: MethodsList -> Int -> AllowedMethods
newAllowedMethods _Items _Quantity = AllowedMethods { "Items": _Items, "Quantity": _Quantity, "CachedMethods": Nothing }

-- | Constructs AllowedMethods's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAllowedMethods' :: MethodsList -> Int -> ( { "Quantity" :: (Int) , "Items" :: (MethodsList) , "CachedMethods" :: Maybe (CachedMethods) } -> {"Quantity" :: (Int) , "Items" :: (MethodsList) , "CachedMethods" :: Maybe (CachedMethods) } ) -> AllowedMethods
newAllowedMethods' _Items _Quantity customize = (AllowedMethods <<< customize) { "Items": _Items, "Quantity": _Quantity, "CachedMethods": Nothing }



newtype AwsAccountNumberList = AwsAccountNumberList (Array String)
derive instance newtypeAwsAccountNumberList :: Newtype AwsAccountNumberList _
derive instance repGenericAwsAccountNumberList :: Generic AwsAccountNumberList _
instance showAwsAccountNumberList :: Show AwsAccountNumberList where show = genericShow
instance decodeAwsAccountNumberList :: Decode AwsAccountNumberList where decode = genericDecode options
instance encodeAwsAccountNumberList :: Encode AwsAccountNumberList where encode = genericEncode options



newtype BatchTooLarge = BatchTooLarge 
  { "Message" :: Maybe (String)
  }
derive instance newtypeBatchTooLarge :: Newtype BatchTooLarge _
derive instance repGenericBatchTooLarge :: Generic BatchTooLarge _
instance showBatchTooLarge :: Show BatchTooLarge where show = genericShow
instance decodeBatchTooLarge :: Decode BatchTooLarge where decode = genericDecode options
instance encodeBatchTooLarge :: Encode BatchTooLarge where encode = genericEncode options

-- | Constructs BatchTooLarge from required parameters
newBatchTooLarge :: BatchTooLarge
newBatchTooLarge  = BatchTooLarge { "Message": Nothing }

-- | Constructs BatchTooLarge's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchTooLarge' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> BatchTooLarge
newBatchTooLarge'  customize = (BatchTooLarge <<< customize) { "Message": Nothing }



newtype CNAMEAlreadyExists = CNAMEAlreadyExists 
  { "Message" :: Maybe (String)
  }
derive instance newtypeCNAMEAlreadyExists :: Newtype CNAMEAlreadyExists _
derive instance repGenericCNAMEAlreadyExists :: Generic CNAMEAlreadyExists _
instance showCNAMEAlreadyExists :: Show CNAMEAlreadyExists where show = genericShow
instance decodeCNAMEAlreadyExists :: Decode CNAMEAlreadyExists where decode = genericDecode options
instance encodeCNAMEAlreadyExists :: Encode CNAMEAlreadyExists where encode = genericEncode options

-- | Constructs CNAMEAlreadyExists from required parameters
newCNAMEAlreadyExists :: CNAMEAlreadyExists
newCNAMEAlreadyExists  = CNAMEAlreadyExists { "Message": Nothing }

-- | Constructs CNAMEAlreadyExists's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCNAMEAlreadyExists' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> CNAMEAlreadyExists
newCNAMEAlreadyExists'  customize = (CNAMEAlreadyExists <<< customize) { "Message": Nothing }



-- | <p>A complex type that describes how CloudFront processes requests.</p> <p>You must create at least as many cache behaviors (including the default cache behavior) as you have origins if you want CloudFront to distribute objects from all of the origins. Each cache behavior specifies the one origin from which you want CloudFront to get objects. If you have two origins and only the default cache behavior, the default cache behavior will cause CloudFront to get objects from one of the origins, but the other origin is never used.</p> <p>For the current limit on the number of cache behaviors that you can add to a distribution, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_cloudfront">Amazon CloudFront Limits</a> in the <i>AWS General Reference</i>.</p> <p>If you don't want to specify any cache behaviors, include only an empty <code>CacheBehaviors</code> element. Don't include an empty <code>CacheBehavior</code> element, or CloudFront returns a <code>MalformedXML</code> error.</p> <p>To delete all cache behaviors in an existing distribution, update the distribution configuration and include only an empty <code>CacheBehaviors</code> element.</p> <p>To add, change, or remove one or more cache behaviors, update the distribution configuration and specify all of the cache behaviors that you want to include in the updated distribution.</p> <p>For more information about cache behaviors, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesCacheBehavior">Cache Behaviors</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
newtype CacheBehavior = CacheBehavior 
  { "PathPattern" :: (String)
  , "TargetOriginId" :: (String)
  , "ForwardedValues" :: (ForwardedValues)
  , "TrustedSigners" :: (TrustedSigners)
  , "ViewerProtocolPolicy" :: (ViewerProtocolPolicy)
  , "MinTTL" :: (Number)
  , "AllowedMethods" :: Maybe (AllowedMethods)
  , "SmoothStreaming" :: Maybe (Boolean)
  , "DefaultTTL" :: Maybe (Number)
  , "MaxTTL" :: Maybe (Number)
  , "Compress" :: Maybe (Boolean)
  , "LambdaFunctionAssociations" :: Maybe (LambdaFunctionAssociations)
  }
derive instance newtypeCacheBehavior :: Newtype CacheBehavior _
derive instance repGenericCacheBehavior :: Generic CacheBehavior _
instance showCacheBehavior :: Show CacheBehavior where show = genericShow
instance decodeCacheBehavior :: Decode CacheBehavior where decode = genericDecode options
instance encodeCacheBehavior :: Encode CacheBehavior where encode = genericEncode options

-- | Constructs CacheBehavior from required parameters
newCacheBehavior :: ForwardedValues -> Number -> String -> String -> TrustedSigners -> ViewerProtocolPolicy -> CacheBehavior
newCacheBehavior _ForwardedValues _MinTTL _PathPattern _TargetOriginId _TrustedSigners _ViewerProtocolPolicy = CacheBehavior { "ForwardedValues": _ForwardedValues, "MinTTL": _MinTTL, "PathPattern": _PathPattern, "TargetOriginId": _TargetOriginId, "TrustedSigners": _TrustedSigners, "ViewerProtocolPolicy": _ViewerProtocolPolicy, "AllowedMethods": Nothing, "Compress": Nothing, "DefaultTTL": Nothing, "LambdaFunctionAssociations": Nothing, "MaxTTL": Nothing, "SmoothStreaming": Nothing }

-- | Constructs CacheBehavior's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCacheBehavior' :: ForwardedValues -> Number -> String -> String -> TrustedSigners -> ViewerProtocolPolicy -> ( { "PathPattern" :: (String) , "TargetOriginId" :: (String) , "ForwardedValues" :: (ForwardedValues) , "TrustedSigners" :: (TrustedSigners) , "ViewerProtocolPolicy" :: (ViewerProtocolPolicy) , "MinTTL" :: (Number) , "AllowedMethods" :: Maybe (AllowedMethods) , "SmoothStreaming" :: Maybe (Boolean) , "DefaultTTL" :: Maybe (Number) , "MaxTTL" :: Maybe (Number) , "Compress" :: Maybe (Boolean) , "LambdaFunctionAssociations" :: Maybe (LambdaFunctionAssociations) } -> {"PathPattern" :: (String) , "TargetOriginId" :: (String) , "ForwardedValues" :: (ForwardedValues) , "TrustedSigners" :: (TrustedSigners) , "ViewerProtocolPolicy" :: (ViewerProtocolPolicy) , "MinTTL" :: (Number) , "AllowedMethods" :: Maybe (AllowedMethods) , "SmoothStreaming" :: Maybe (Boolean) , "DefaultTTL" :: Maybe (Number) , "MaxTTL" :: Maybe (Number) , "Compress" :: Maybe (Boolean) , "LambdaFunctionAssociations" :: Maybe (LambdaFunctionAssociations) } ) -> CacheBehavior
newCacheBehavior' _ForwardedValues _MinTTL _PathPattern _TargetOriginId _TrustedSigners _ViewerProtocolPolicy customize = (CacheBehavior <<< customize) { "ForwardedValues": _ForwardedValues, "MinTTL": _MinTTL, "PathPattern": _PathPattern, "TargetOriginId": _TargetOriginId, "TrustedSigners": _TrustedSigners, "ViewerProtocolPolicy": _ViewerProtocolPolicy, "AllowedMethods": Nothing, "Compress": Nothing, "DefaultTTL": Nothing, "LambdaFunctionAssociations": Nothing, "MaxTTL": Nothing, "SmoothStreaming": Nothing }



newtype CacheBehaviorList = CacheBehaviorList (Array CacheBehavior)
derive instance newtypeCacheBehaviorList :: Newtype CacheBehaviorList _
derive instance repGenericCacheBehaviorList :: Generic CacheBehaviorList _
instance showCacheBehaviorList :: Show CacheBehaviorList where show = genericShow
instance decodeCacheBehaviorList :: Decode CacheBehaviorList where decode = genericDecode options
instance encodeCacheBehaviorList :: Encode CacheBehaviorList where encode = genericEncode options



-- | <p>A complex type that contains zero or more <code>CacheBehavior</code> elements. </p>
newtype CacheBehaviors = CacheBehaviors 
  { "Quantity" :: (Int)
  , "Items" :: Maybe (CacheBehaviorList)
  }
derive instance newtypeCacheBehaviors :: Newtype CacheBehaviors _
derive instance repGenericCacheBehaviors :: Generic CacheBehaviors _
instance showCacheBehaviors :: Show CacheBehaviors where show = genericShow
instance decodeCacheBehaviors :: Decode CacheBehaviors where decode = genericDecode options
instance encodeCacheBehaviors :: Encode CacheBehaviors where encode = genericEncode options

-- | Constructs CacheBehaviors from required parameters
newCacheBehaviors :: Int -> CacheBehaviors
newCacheBehaviors _Quantity = CacheBehaviors { "Quantity": _Quantity, "Items": Nothing }

-- | Constructs CacheBehaviors's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCacheBehaviors' :: Int -> ( { "Quantity" :: (Int) , "Items" :: Maybe (CacheBehaviorList) } -> {"Quantity" :: (Int) , "Items" :: Maybe (CacheBehaviorList) } ) -> CacheBehaviors
newCacheBehaviors' _Quantity customize = (CacheBehaviors <<< customize) { "Quantity": _Quantity, "Items": Nothing }



-- | <p>A complex type that controls whether CloudFront caches the response to requests using the specified HTTP methods. There are two choices:</p> <ul> <li> <p>CloudFront caches responses to <code>GET</code> and <code>HEAD</code> requests.</p> </li> <li> <p>CloudFront caches responses to <code>GET</code>, <code>HEAD</code>, and <code>OPTIONS</code> requests.</p> </li> </ul> <p>If you pick the second choice for your Amazon S3 Origin, you may need to forward Access-Control-Request-Method, Access-Control-Request-Headers, and Origin headers for the responses to be cached correctly. </p>
newtype CachedMethods = CachedMethods 
  { "Quantity" :: (Int)
  , "Items" :: (MethodsList)
  }
derive instance newtypeCachedMethods :: Newtype CachedMethods _
derive instance repGenericCachedMethods :: Generic CachedMethods _
instance showCachedMethods :: Show CachedMethods where show = genericShow
instance decodeCachedMethods :: Decode CachedMethods where decode = genericDecode options
instance encodeCachedMethods :: Encode CachedMethods where encode = genericEncode options

-- | Constructs CachedMethods from required parameters
newCachedMethods :: MethodsList -> Int -> CachedMethods
newCachedMethods _Items _Quantity = CachedMethods { "Items": _Items, "Quantity": _Quantity }

-- | Constructs CachedMethods's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCachedMethods' :: MethodsList -> Int -> ( { "Quantity" :: (Int) , "Items" :: (MethodsList) } -> {"Quantity" :: (Int) , "Items" :: (MethodsList) } ) -> CachedMethods
newCachedMethods' _Items _Quantity customize = (CachedMethods <<< customize) { "Items": _Items, "Quantity": _Quantity }



newtype CertificateSource = CertificateSource String
derive instance newtypeCertificateSource :: Newtype CertificateSource _
derive instance repGenericCertificateSource :: Generic CertificateSource _
instance showCertificateSource :: Show CertificateSource where show = genericShow
instance decodeCertificateSource :: Decode CertificateSource where decode = genericDecode options
instance encodeCertificateSource :: Encode CertificateSource where encode = genericEncode options



-- | <p>CloudFront origin access identity.</p>
newtype CloudFrontOriginAccessIdentity = CloudFrontOriginAccessIdentity 
  { "Id" :: (String)
  , "S3CanonicalUserId" :: (String)
  , "CloudFrontOriginAccessIdentityConfig" :: Maybe (CloudFrontOriginAccessIdentityConfig)
  }
derive instance newtypeCloudFrontOriginAccessIdentity :: Newtype CloudFrontOriginAccessIdentity _
derive instance repGenericCloudFrontOriginAccessIdentity :: Generic CloudFrontOriginAccessIdentity _
instance showCloudFrontOriginAccessIdentity :: Show CloudFrontOriginAccessIdentity where show = genericShow
instance decodeCloudFrontOriginAccessIdentity :: Decode CloudFrontOriginAccessIdentity where decode = genericDecode options
instance encodeCloudFrontOriginAccessIdentity :: Encode CloudFrontOriginAccessIdentity where encode = genericEncode options

-- | Constructs CloudFrontOriginAccessIdentity from required parameters
newCloudFrontOriginAccessIdentity :: String -> String -> CloudFrontOriginAccessIdentity
newCloudFrontOriginAccessIdentity _Id _S3CanonicalUserId = CloudFrontOriginAccessIdentity { "Id": _Id, "S3CanonicalUserId": _S3CanonicalUserId, "CloudFrontOriginAccessIdentityConfig": Nothing }

-- | Constructs CloudFrontOriginAccessIdentity's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCloudFrontOriginAccessIdentity' :: String -> String -> ( { "Id" :: (String) , "S3CanonicalUserId" :: (String) , "CloudFrontOriginAccessIdentityConfig" :: Maybe (CloudFrontOriginAccessIdentityConfig) } -> {"Id" :: (String) , "S3CanonicalUserId" :: (String) , "CloudFrontOriginAccessIdentityConfig" :: Maybe (CloudFrontOriginAccessIdentityConfig) } ) -> CloudFrontOriginAccessIdentity
newCloudFrontOriginAccessIdentity' _Id _S3CanonicalUserId customize = (CloudFrontOriginAccessIdentity <<< customize) { "Id": _Id, "S3CanonicalUserId": _S3CanonicalUserId, "CloudFrontOriginAccessIdentityConfig": Nothing }



-- | <p>If the <code>CallerReference</code> is a value you already sent in a previous request to create an identity but the content of the <code>CloudFrontOriginAccessIdentityConfig</code> is different from the original request, CloudFront returns a <code>CloudFrontOriginAccessIdentityAlreadyExists</code> error. </p>
newtype CloudFrontOriginAccessIdentityAlreadyExists = CloudFrontOriginAccessIdentityAlreadyExists 
  { "Message" :: Maybe (String)
  }
derive instance newtypeCloudFrontOriginAccessIdentityAlreadyExists :: Newtype CloudFrontOriginAccessIdentityAlreadyExists _
derive instance repGenericCloudFrontOriginAccessIdentityAlreadyExists :: Generic CloudFrontOriginAccessIdentityAlreadyExists _
instance showCloudFrontOriginAccessIdentityAlreadyExists :: Show CloudFrontOriginAccessIdentityAlreadyExists where show = genericShow
instance decodeCloudFrontOriginAccessIdentityAlreadyExists :: Decode CloudFrontOriginAccessIdentityAlreadyExists where decode = genericDecode options
instance encodeCloudFrontOriginAccessIdentityAlreadyExists :: Encode CloudFrontOriginAccessIdentityAlreadyExists where encode = genericEncode options

-- | Constructs CloudFrontOriginAccessIdentityAlreadyExists from required parameters
newCloudFrontOriginAccessIdentityAlreadyExists :: CloudFrontOriginAccessIdentityAlreadyExists
newCloudFrontOriginAccessIdentityAlreadyExists  = CloudFrontOriginAccessIdentityAlreadyExists { "Message": Nothing }

-- | Constructs CloudFrontOriginAccessIdentityAlreadyExists's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCloudFrontOriginAccessIdentityAlreadyExists' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> CloudFrontOriginAccessIdentityAlreadyExists
newCloudFrontOriginAccessIdentityAlreadyExists'  customize = (CloudFrontOriginAccessIdentityAlreadyExists <<< customize) { "Message": Nothing }



-- | <p>Origin access identity configuration. Send a <code>GET</code> request to the <code>/<i>CloudFront API version</i>/CloudFront/identity ID/config</code> resource. </p>
newtype CloudFrontOriginAccessIdentityConfig = CloudFrontOriginAccessIdentityConfig 
  { "CallerReference" :: (String)
  , "Comment" :: (String)
  }
derive instance newtypeCloudFrontOriginAccessIdentityConfig :: Newtype CloudFrontOriginAccessIdentityConfig _
derive instance repGenericCloudFrontOriginAccessIdentityConfig :: Generic CloudFrontOriginAccessIdentityConfig _
instance showCloudFrontOriginAccessIdentityConfig :: Show CloudFrontOriginAccessIdentityConfig where show = genericShow
instance decodeCloudFrontOriginAccessIdentityConfig :: Decode CloudFrontOriginAccessIdentityConfig where decode = genericDecode options
instance encodeCloudFrontOriginAccessIdentityConfig :: Encode CloudFrontOriginAccessIdentityConfig where encode = genericEncode options

-- | Constructs CloudFrontOriginAccessIdentityConfig from required parameters
newCloudFrontOriginAccessIdentityConfig :: String -> String -> CloudFrontOriginAccessIdentityConfig
newCloudFrontOriginAccessIdentityConfig _CallerReference _Comment = CloudFrontOriginAccessIdentityConfig { "CallerReference": _CallerReference, "Comment": _Comment }

-- | Constructs CloudFrontOriginAccessIdentityConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCloudFrontOriginAccessIdentityConfig' :: String -> String -> ( { "CallerReference" :: (String) , "Comment" :: (String) } -> {"CallerReference" :: (String) , "Comment" :: (String) } ) -> CloudFrontOriginAccessIdentityConfig
newCloudFrontOriginAccessIdentityConfig' _CallerReference _Comment customize = (CloudFrontOriginAccessIdentityConfig <<< customize) { "CallerReference": _CallerReference, "Comment": _Comment }



newtype CloudFrontOriginAccessIdentityInUse = CloudFrontOriginAccessIdentityInUse 
  { "Message" :: Maybe (String)
  }
derive instance newtypeCloudFrontOriginAccessIdentityInUse :: Newtype CloudFrontOriginAccessIdentityInUse _
derive instance repGenericCloudFrontOriginAccessIdentityInUse :: Generic CloudFrontOriginAccessIdentityInUse _
instance showCloudFrontOriginAccessIdentityInUse :: Show CloudFrontOriginAccessIdentityInUse where show = genericShow
instance decodeCloudFrontOriginAccessIdentityInUse :: Decode CloudFrontOriginAccessIdentityInUse where decode = genericDecode options
instance encodeCloudFrontOriginAccessIdentityInUse :: Encode CloudFrontOriginAccessIdentityInUse where encode = genericEncode options

-- | Constructs CloudFrontOriginAccessIdentityInUse from required parameters
newCloudFrontOriginAccessIdentityInUse :: CloudFrontOriginAccessIdentityInUse
newCloudFrontOriginAccessIdentityInUse  = CloudFrontOriginAccessIdentityInUse { "Message": Nothing }

-- | Constructs CloudFrontOriginAccessIdentityInUse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCloudFrontOriginAccessIdentityInUse' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> CloudFrontOriginAccessIdentityInUse
newCloudFrontOriginAccessIdentityInUse'  customize = (CloudFrontOriginAccessIdentityInUse <<< customize) { "Message": Nothing }



-- | <p>Lists the origin access identities for CloudFront.Send a <code>GET</code> request to the <code>/<i>CloudFront API version</i>/origin-access-identity/cloudfront</code> resource. The response includes a <code>CloudFrontOriginAccessIdentityList</code> element with zero or more <code>CloudFrontOriginAccessIdentitySummary</code> child elements. By default, your entire list of origin access identities is returned in one single page. If the list is long, you can paginate it using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>
newtype CloudFrontOriginAccessIdentityList = CloudFrontOriginAccessIdentityList 
  { "Marker" :: (String)
  , "NextMarker" :: Maybe (String)
  , "MaxItems" :: (Int)
  , "IsTruncated" :: (Boolean)
  , "Quantity" :: (Int)
  , "Items" :: Maybe (CloudFrontOriginAccessIdentitySummaryList)
  }
derive instance newtypeCloudFrontOriginAccessIdentityList :: Newtype CloudFrontOriginAccessIdentityList _
derive instance repGenericCloudFrontOriginAccessIdentityList :: Generic CloudFrontOriginAccessIdentityList _
instance showCloudFrontOriginAccessIdentityList :: Show CloudFrontOriginAccessIdentityList where show = genericShow
instance decodeCloudFrontOriginAccessIdentityList :: Decode CloudFrontOriginAccessIdentityList where decode = genericDecode options
instance encodeCloudFrontOriginAccessIdentityList :: Encode CloudFrontOriginAccessIdentityList where encode = genericEncode options

-- | Constructs CloudFrontOriginAccessIdentityList from required parameters
newCloudFrontOriginAccessIdentityList :: Boolean -> String -> Int -> Int -> CloudFrontOriginAccessIdentityList
newCloudFrontOriginAccessIdentityList _IsTruncated _Marker _MaxItems _Quantity = CloudFrontOriginAccessIdentityList { "IsTruncated": _IsTruncated, "Marker": _Marker, "MaxItems": _MaxItems, "Quantity": _Quantity, "Items": Nothing, "NextMarker": Nothing }

-- | Constructs CloudFrontOriginAccessIdentityList's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCloudFrontOriginAccessIdentityList' :: Boolean -> String -> Int -> Int -> ( { "Marker" :: (String) , "NextMarker" :: Maybe (String) , "MaxItems" :: (Int) , "IsTruncated" :: (Boolean) , "Quantity" :: (Int) , "Items" :: Maybe (CloudFrontOriginAccessIdentitySummaryList) } -> {"Marker" :: (String) , "NextMarker" :: Maybe (String) , "MaxItems" :: (Int) , "IsTruncated" :: (Boolean) , "Quantity" :: (Int) , "Items" :: Maybe (CloudFrontOriginAccessIdentitySummaryList) } ) -> CloudFrontOriginAccessIdentityList
newCloudFrontOriginAccessIdentityList' _IsTruncated _Marker _MaxItems _Quantity customize = (CloudFrontOriginAccessIdentityList <<< customize) { "IsTruncated": _IsTruncated, "Marker": _Marker, "MaxItems": _MaxItems, "Quantity": _Quantity, "Items": Nothing, "NextMarker": Nothing }



-- | <p>Summary of the information about a CloudFront origin access identity.</p>
newtype CloudFrontOriginAccessIdentitySummary = CloudFrontOriginAccessIdentitySummary 
  { "Id" :: (String)
  , "S3CanonicalUserId" :: (String)
  , "Comment" :: (String)
  }
derive instance newtypeCloudFrontOriginAccessIdentitySummary :: Newtype CloudFrontOriginAccessIdentitySummary _
derive instance repGenericCloudFrontOriginAccessIdentitySummary :: Generic CloudFrontOriginAccessIdentitySummary _
instance showCloudFrontOriginAccessIdentitySummary :: Show CloudFrontOriginAccessIdentitySummary where show = genericShow
instance decodeCloudFrontOriginAccessIdentitySummary :: Decode CloudFrontOriginAccessIdentitySummary where decode = genericDecode options
instance encodeCloudFrontOriginAccessIdentitySummary :: Encode CloudFrontOriginAccessIdentitySummary where encode = genericEncode options

-- | Constructs CloudFrontOriginAccessIdentitySummary from required parameters
newCloudFrontOriginAccessIdentitySummary :: String -> String -> String -> CloudFrontOriginAccessIdentitySummary
newCloudFrontOriginAccessIdentitySummary _Comment _Id _S3CanonicalUserId = CloudFrontOriginAccessIdentitySummary { "Comment": _Comment, "Id": _Id, "S3CanonicalUserId": _S3CanonicalUserId }

-- | Constructs CloudFrontOriginAccessIdentitySummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCloudFrontOriginAccessIdentitySummary' :: String -> String -> String -> ( { "Id" :: (String) , "S3CanonicalUserId" :: (String) , "Comment" :: (String) } -> {"Id" :: (String) , "S3CanonicalUserId" :: (String) , "Comment" :: (String) } ) -> CloudFrontOriginAccessIdentitySummary
newCloudFrontOriginAccessIdentitySummary' _Comment _Id _S3CanonicalUserId customize = (CloudFrontOriginAccessIdentitySummary <<< customize) { "Comment": _Comment, "Id": _Id, "S3CanonicalUserId": _S3CanonicalUserId }



newtype CloudFrontOriginAccessIdentitySummaryList = CloudFrontOriginAccessIdentitySummaryList (Array CloudFrontOriginAccessIdentitySummary)
derive instance newtypeCloudFrontOriginAccessIdentitySummaryList :: Newtype CloudFrontOriginAccessIdentitySummaryList _
derive instance repGenericCloudFrontOriginAccessIdentitySummaryList :: Generic CloudFrontOriginAccessIdentitySummaryList _
instance showCloudFrontOriginAccessIdentitySummaryList :: Show CloudFrontOriginAccessIdentitySummaryList where show = genericShow
instance decodeCloudFrontOriginAccessIdentitySummaryList :: Decode CloudFrontOriginAccessIdentitySummaryList where decode = genericDecode options
instance encodeCloudFrontOriginAccessIdentitySummaryList :: Encode CloudFrontOriginAccessIdentitySummaryList where encode = genericEncode options



newtype CookieNameList = CookieNameList (Array String)
derive instance newtypeCookieNameList :: Newtype CookieNameList _
derive instance repGenericCookieNameList :: Generic CookieNameList _
instance showCookieNameList :: Show CookieNameList where show = genericShow
instance decodeCookieNameList :: Decode CookieNameList where decode = genericDecode options
instance encodeCookieNameList :: Encode CookieNameList where encode = genericEncode options



-- | <p>A complex type that specifies whether you want CloudFront to forward cookies to the origin and, if so, which ones. For more information about forwarding cookies to the origin, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Cookies.html">How CloudFront Forwards, Caches, and Logs Cookies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
newtype CookieNames = CookieNames 
  { "Quantity" :: (Int)
  , "Items" :: Maybe (CookieNameList)
  }
derive instance newtypeCookieNames :: Newtype CookieNames _
derive instance repGenericCookieNames :: Generic CookieNames _
instance showCookieNames :: Show CookieNames where show = genericShow
instance decodeCookieNames :: Decode CookieNames where decode = genericDecode options
instance encodeCookieNames :: Encode CookieNames where encode = genericEncode options

-- | Constructs CookieNames from required parameters
newCookieNames :: Int -> CookieNames
newCookieNames _Quantity = CookieNames { "Quantity": _Quantity, "Items": Nothing }

-- | Constructs CookieNames's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCookieNames' :: Int -> ( { "Quantity" :: (Int) , "Items" :: Maybe (CookieNameList) } -> {"Quantity" :: (Int) , "Items" :: Maybe (CookieNameList) } ) -> CookieNames
newCookieNames' _Quantity customize = (CookieNames <<< customize) { "Quantity": _Quantity, "Items": Nothing }



-- | <p>A complex type that specifies whether you want CloudFront to forward cookies to the origin and, if so, which ones. For more information about forwarding cookies to the origin, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Cookies.html">How CloudFront Forwards, Caches, and Logs Cookies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
newtype CookiePreference = CookiePreference 
  { "Forward" :: (ItemSelection)
  , "WhitelistedNames" :: Maybe (CookieNames)
  }
derive instance newtypeCookiePreference :: Newtype CookiePreference _
derive instance repGenericCookiePreference :: Generic CookiePreference _
instance showCookiePreference :: Show CookiePreference where show = genericShow
instance decodeCookiePreference :: Decode CookiePreference where decode = genericDecode options
instance encodeCookiePreference :: Encode CookiePreference where encode = genericEncode options

-- | Constructs CookiePreference from required parameters
newCookiePreference :: ItemSelection -> CookiePreference
newCookiePreference _Forward = CookiePreference { "Forward": _Forward, "WhitelistedNames": Nothing }

-- | Constructs CookiePreference's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCookiePreference' :: ItemSelection -> ( { "Forward" :: (ItemSelection) , "WhitelistedNames" :: Maybe (CookieNames) } -> {"Forward" :: (ItemSelection) , "WhitelistedNames" :: Maybe (CookieNames) } ) -> CookiePreference
newCookiePreference' _Forward customize = (CookiePreference <<< customize) { "Forward": _Forward, "WhitelistedNames": Nothing }



-- | <p>The request to create a new origin access identity.</p>
newtype CreateCloudFrontOriginAccessIdentityRequest = CreateCloudFrontOriginAccessIdentityRequest 
  { "CloudFrontOriginAccessIdentityConfig" :: (CloudFrontOriginAccessIdentityConfig)
  }
derive instance newtypeCreateCloudFrontOriginAccessIdentityRequest :: Newtype CreateCloudFrontOriginAccessIdentityRequest _
derive instance repGenericCreateCloudFrontOriginAccessIdentityRequest :: Generic CreateCloudFrontOriginAccessIdentityRequest _
instance showCreateCloudFrontOriginAccessIdentityRequest :: Show CreateCloudFrontOriginAccessIdentityRequest where show = genericShow
instance decodeCreateCloudFrontOriginAccessIdentityRequest :: Decode CreateCloudFrontOriginAccessIdentityRequest where decode = genericDecode options
instance encodeCreateCloudFrontOriginAccessIdentityRequest :: Encode CreateCloudFrontOriginAccessIdentityRequest where encode = genericEncode options

-- | Constructs CreateCloudFrontOriginAccessIdentityRequest from required parameters
newCreateCloudFrontOriginAccessIdentityRequest :: CloudFrontOriginAccessIdentityConfig -> CreateCloudFrontOriginAccessIdentityRequest
newCreateCloudFrontOriginAccessIdentityRequest _CloudFrontOriginAccessIdentityConfig = CreateCloudFrontOriginAccessIdentityRequest { "CloudFrontOriginAccessIdentityConfig": _CloudFrontOriginAccessIdentityConfig }

-- | Constructs CreateCloudFrontOriginAccessIdentityRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateCloudFrontOriginAccessIdentityRequest' :: CloudFrontOriginAccessIdentityConfig -> ( { "CloudFrontOriginAccessIdentityConfig" :: (CloudFrontOriginAccessIdentityConfig) } -> {"CloudFrontOriginAccessIdentityConfig" :: (CloudFrontOriginAccessIdentityConfig) } ) -> CreateCloudFrontOriginAccessIdentityRequest
newCreateCloudFrontOriginAccessIdentityRequest' _CloudFrontOriginAccessIdentityConfig customize = (CreateCloudFrontOriginAccessIdentityRequest <<< customize) { "CloudFrontOriginAccessIdentityConfig": _CloudFrontOriginAccessIdentityConfig }



-- | <p>The returned result of the corresponding request.</p>
newtype CreateCloudFrontOriginAccessIdentityResult = CreateCloudFrontOriginAccessIdentityResult 
  { "CloudFrontOriginAccessIdentity" :: Maybe (CloudFrontOriginAccessIdentity)
  , "Location" :: Maybe (String)
  , "ETag" :: Maybe (String)
  }
derive instance newtypeCreateCloudFrontOriginAccessIdentityResult :: Newtype CreateCloudFrontOriginAccessIdentityResult _
derive instance repGenericCreateCloudFrontOriginAccessIdentityResult :: Generic CreateCloudFrontOriginAccessIdentityResult _
instance showCreateCloudFrontOriginAccessIdentityResult :: Show CreateCloudFrontOriginAccessIdentityResult where show = genericShow
instance decodeCreateCloudFrontOriginAccessIdentityResult :: Decode CreateCloudFrontOriginAccessIdentityResult where decode = genericDecode options
instance encodeCreateCloudFrontOriginAccessIdentityResult :: Encode CreateCloudFrontOriginAccessIdentityResult where encode = genericEncode options

-- | Constructs CreateCloudFrontOriginAccessIdentityResult from required parameters
newCreateCloudFrontOriginAccessIdentityResult :: CreateCloudFrontOriginAccessIdentityResult
newCreateCloudFrontOriginAccessIdentityResult  = CreateCloudFrontOriginAccessIdentityResult { "CloudFrontOriginAccessIdentity": Nothing, "ETag": Nothing, "Location": Nothing }

-- | Constructs CreateCloudFrontOriginAccessIdentityResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateCloudFrontOriginAccessIdentityResult' :: ( { "CloudFrontOriginAccessIdentity" :: Maybe (CloudFrontOriginAccessIdentity) , "Location" :: Maybe (String) , "ETag" :: Maybe (String) } -> {"CloudFrontOriginAccessIdentity" :: Maybe (CloudFrontOriginAccessIdentity) , "Location" :: Maybe (String) , "ETag" :: Maybe (String) } ) -> CreateCloudFrontOriginAccessIdentityResult
newCreateCloudFrontOriginAccessIdentityResult'  customize = (CreateCloudFrontOriginAccessIdentityResult <<< customize) { "CloudFrontOriginAccessIdentity": Nothing, "ETag": Nothing, "Location": Nothing }



-- | <p>The request to create a new distribution.</p>
newtype CreateDistributionRequest = CreateDistributionRequest 
  { "DistributionConfig" :: (DistributionConfig)
  }
derive instance newtypeCreateDistributionRequest :: Newtype CreateDistributionRequest _
derive instance repGenericCreateDistributionRequest :: Generic CreateDistributionRequest _
instance showCreateDistributionRequest :: Show CreateDistributionRequest where show = genericShow
instance decodeCreateDistributionRequest :: Decode CreateDistributionRequest where decode = genericDecode options
instance encodeCreateDistributionRequest :: Encode CreateDistributionRequest where encode = genericEncode options

-- | Constructs CreateDistributionRequest from required parameters
newCreateDistributionRequest :: DistributionConfig -> CreateDistributionRequest
newCreateDistributionRequest _DistributionConfig = CreateDistributionRequest { "DistributionConfig": _DistributionConfig }

-- | Constructs CreateDistributionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateDistributionRequest' :: DistributionConfig -> ( { "DistributionConfig" :: (DistributionConfig) } -> {"DistributionConfig" :: (DistributionConfig) } ) -> CreateDistributionRequest
newCreateDistributionRequest' _DistributionConfig customize = (CreateDistributionRequest <<< customize) { "DistributionConfig": _DistributionConfig }



-- | <p>The returned result of the corresponding request.</p>
newtype CreateDistributionResult = CreateDistributionResult 
  { "Distribution" :: Maybe (Distribution)
  , "Location" :: Maybe (String)
  , "ETag" :: Maybe (String)
  }
derive instance newtypeCreateDistributionResult :: Newtype CreateDistributionResult _
derive instance repGenericCreateDistributionResult :: Generic CreateDistributionResult _
instance showCreateDistributionResult :: Show CreateDistributionResult where show = genericShow
instance decodeCreateDistributionResult :: Decode CreateDistributionResult where decode = genericDecode options
instance encodeCreateDistributionResult :: Encode CreateDistributionResult where encode = genericEncode options

-- | Constructs CreateDistributionResult from required parameters
newCreateDistributionResult :: CreateDistributionResult
newCreateDistributionResult  = CreateDistributionResult { "Distribution": Nothing, "ETag": Nothing, "Location": Nothing }

-- | Constructs CreateDistributionResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateDistributionResult' :: ( { "Distribution" :: Maybe (Distribution) , "Location" :: Maybe (String) , "ETag" :: Maybe (String) } -> {"Distribution" :: Maybe (Distribution) , "Location" :: Maybe (String) , "ETag" :: Maybe (String) } ) -> CreateDistributionResult
newCreateDistributionResult'  customize = (CreateDistributionResult <<< customize) { "Distribution": Nothing, "ETag": Nothing, "Location": Nothing }



-- | <p>The request to create a new distribution with tags. </p>
newtype CreateDistributionWithTagsRequest = CreateDistributionWithTagsRequest 
  { "DistributionConfigWithTags" :: (DistributionConfigWithTags)
  }
derive instance newtypeCreateDistributionWithTagsRequest :: Newtype CreateDistributionWithTagsRequest _
derive instance repGenericCreateDistributionWithTagsRequest :: Generic CreateDistributionWithTagsRequest _
instance showCreateDistributionWithTagsRequest :: Show CreateDistributionWithTagsRequest where show = genericShow
instance decodeCreateDistributionWithTagsRequest :: Decode CreateDistributionWithTagsRequest where decode = genericDecode options
instance encodeCreateDistributionWithTagsRequest :: Encode CreateDistributionWithTagsRequest where encode = genericEncode options

-- | Constructs CreateDistributionWithTagsRequest from required parameters
newCreateDistributionWithTagsRequest :: DistributionConfigWithTags -> CreateDistributionWithTagsRequest
newCreateDistributionWithTagsRequest _DistributionConfigWithTags = CreateDistributionWithTagsRequest { "DistributionConfigWithTags": _DistributionConfigWithTags }

-- | Constructs CreateDistributionWithTagsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateDistributionWithTagsRequest' :: DistributionConfigWithTags -> ( { "DistributionConfigWithTags" :: (DistributionConfigWithTags) } -> {"DistributionConfigWithTags" :: (DistributionConfigWithTags) } ) -> CreateDistributionWithTagsRequest
newCreateDistributionWithTagsRequest' _DistributionConfigWithTags customize = (CreateDistributionWithTagsRequest <<< customize) { "DistributionConfigWithTags": _DistributionConfigWithTags }



-- | <p>The returned result of the corresponding request. </p>
newtype CreateDistributionWithTagsResult = CreateDistributionWithTagsResult 
  { "Distribution" :: Maybe (Distribution)
  , "Location" :: Maybe (String)
  , "ETag" :: Maybe (String)
  }
derive instance newtypeCreateDistributionWithTagsResult :: Newtype CreateDistributionWithTagsResult _
derive instance repGenericCreateDistributionWithTagsResult :: Generic CreateDistributionWithTagsResult _
instance showCreateDistributionWithTagsResult :: Show CreateDistributionWithTagsResult where show = genericShow
instance decodeCreateDistributionWithTagsResult :: Decode CreateDistributionWithTagsResult where decode = genericDecode options
instance encodeCreateDistributionWithTagsResult :: Encode CreateDistributionWithTagsResult where encode = genericEncode options

-- | Constructs CreateDistributionWithTagsResult from required parameters
newCreateDistributionWithTagsResult :: CreateDistributionWithTagsResult
newCreateDistributionWithTagsResult  = CreateDistributionWithTagsResult { "Distribution": Nothing, "ETag": Nothing, "Location": Nothing }

-- | Constructs CreateDistributionWithTagsResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateDistributionWithTagsResult' :: ( { "Distribution" :: Maybe (Distribution) , "Location" :: Maybe (String) , "ETag" :: Maybe (String) } -> {"Distribution" :: Maybe (Distribution) , "Location" :: Maybe (String) , "ETag" :: Maybe (String) } ) -> CreateDistributionWithTagsResult
newCreateDistributionWithTagsResult'  customize = (CreateDistributionWithTagsResult <<< customize) { "Distribution": Nothing, "ETag": Nothing, "Location": Nothing }



-- | <p>The request to create an invalidation.</p>
newtype CreateInvalidationRequest = CreateInvalidationRequest 
  { "DistributionId" :: (String)
  , "InvalidationBatch" :: (InvalidationBatch)
  }
derive instance newtypeCreateInvalidationRequest :: Newtype CreateInvalidationRequest _
derive instance repGenericCreateInvalidationRequest :: Generic CreateInvalidationRequest _
instance showCreateInvalidationRequest :: Show CreateInvalidationRequest where show = genericShow
instance decodeCreateInvalidationRequest :: Decode CreateInvalidationRequest where decode = genericDecode options
instance encodeCreateInvalidationRequest :: Encode CreateInvalidationRequest where encode = genericEncode options

-- | Constructs CreateInvalidationRequest from required parameters
newCreateInvalidationRequest :: String -> InvalidationBatch -> CreateInvalidationRequest
newCreateInvalidationRequest _DistributionId _InvalidationBatch = CreateInvalidationRequest { "DistributionId": _DistributionId, "InvalidationBatch": _InvalidationBatch }

-- | Constructs CreateInvalidationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateInvalidationRequest' :: String -> InvalidationBatch -> ( { "DistributionId" :: (String) , "InvalidationBatch" :: (InvalidationBatch) } -> {"DistributionId" :: (String) , "InvalidationBatch" :: (InvalidationBatch) } ) -> CreateInvalidationRequest
newCreateInvalidationRequest' _DistributionId _InvalidationBatch customize = (CreateInvalidationRequest <<< customize) { "DistributionId": _DistributionId, "InvalidationBatch": _InvalidationBatch }



-- | <p>The returned result of the corresponding request.</p>
newtype CreateInvalidationResult = CreateInvalidationResult 
  { "Location" :: Maybe (String)
  , "Invalidation" :: Maybe (Invalidation)
  }
derive instance newtypeCreateInvalidationResult :: Newtype CreateInvalidationResult _
derive instance repGenericCreateInvalidationResult :: Generic CreateInvalidationResult _
instance showCreateInvalidationResult :: Show CreateInvalidationResult where show = genericShow
instance decodeCreateInvalidationResult :: Decode CreateInvalidationResult where decode = genericDecode options
instance encodeCreateInvalidationResult :: Encode CreateInvalidationResult where encode = genericEncode options

-- | Constructs CreateInvalidationResult from required parameters
newCreateInvalidationResult :: CreateInvalidationResult
newCreateInvalidationResult  = CreateInvalidationResult { "Invalidation": Nothing, "Location": Nothing }

-- | Constructs CreateInvalidationResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateInvalidationResult' :: ( { "Location" :: Maybe (String) , "Invalidation" :: Maybe (Invalidation) } -> {"Location" :: Maybe (String) , "Invalidation" :: Maybe (Invalidation) } ) -> CreateInvalidationResult
newCreateInvalidationResult'  customize = (CreateInvalidationResult <<< customize) { "Invalidation": Nothing, "Location": Nothing }



-- | <p>The request to create a new streaming distribution.</p>
newtype CreateStreamingDistributionRequest = CreateStreamingDistributionRequest 
  { "StreamingDistributionConfig" :: (StreamingDistributionConfig)
  }
derive instance newtypeCreateStreamingDistributionRequest :: Newtype CreateStreamingDistributionRequest _
derive instance repGenericCreateStreamingDistributionRequest :: Generic CreateStreamingDistributionRequest _
instance showCreateStreamingDistributionRequest :: Show CreateStreamingDistributionRequest where show = genericShow
instance decodeCreateStreamingDistributionRequest :: Decode CreateStreamingDistributionRequest where decode = genericDecode options
instance encodeCreateStreamingDistributionRequest :: Encode CreateStreamingDistributionRequest where encode = genericEncode options

-- | Constructs CreateStreamingDistributionRequest from required parameters
newCreateStreamingDistributionRequest :: StreamingDistributionConfig -> CreateStreamingDistributionRequest
newCreateStreamingDistributionRequest _StreamingDistributionConfig = CreateStreamingDistributionRequest { "StreamingDistributionConfig": _StreamingDistributionConfig }

-- | Constructs CreateStreamingDistributionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateStreamingDistributionRequest' :: StreamingDistributionConfig -> ( { "StreamingDistributionConfig" :: (StreamingDistributionConfig) } -> {"StreamingDistributionConfig" :: (StreamingDistributionConfig) } ) -> CreateStreamingDistributionRequest
newCreateStreamingDistributionRequest' _StreamingDistributionConfig customize = (CreateStreamingDistributionRequest <<< customize) { "StreamingDistributionConfig": _StreamingDistributionConfig }



-- | <p>The returned result of the corresponding request.</p>
newtype CreateStreamingDistributionResult = CreateStreamingDistributionResult 
  { "StreamingDistribution" :: Maybe (StreamingDistribution)
  , "Location" :: Maybe (String)
  , "ETag" :: Maybe (String)
  }
derive instance newtypeCreateStreamingDistributionResult :: Newtype CreateStreamingDistributionResult _
derive instance repGenericCreateStreamingDistributionResult :: Generic CreateStreamingDistributionResult _
instance showCreateStreamingDistributionResult :: Show CreateStreamingDistributionResult where show = genericShow
instance decodeCreateStreamingDistributionResult :: Decode CreateStreamingDistributionResult where decode = genericDecode options
instance encodeCreateStreamingDistributionResult :: Encode CreateStreamingDistributionResult where encode = genericEncode options

-- | Constructs CreateStreamingDistributionResult from required parameters
newCreateStreamingDistributionResult :: CreateStreamingDistributionResult
newCreateStreamingDistributionResult  = CreateStreamingDistributionResult { "ETag": Nothing, "Location": Nothing, "StreamingDistribution": Nothing }

-- | Constructs CreateStreamingDistributionResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateStreamingDistributionResult' :: ( { "StreamingDistribution" :: Maybe (StreamingDistribution) , "Location" :: Maybe (String) , "ETag" :: Maybe (String) } -> {"StreamingDistribution" :: Maybe (StreamingDistribution) , "Location" :: Maybe (String) , "ETag" :: Maybe (String) } ) -> CreateStreamingDistributionResult
newCreateStreamingDistributionResult'  customize = (CreateStreamingDistributionResult <<< customize) { "ETag": Nothing, "Location": Nothing, "StreamingDistribution": Nothing }



-- | <p>The request to create a new streaming distribution with tags.</p>
newtype CreateStreamingDistributionWithTagsRequest = CreateStreamingDistributionWithTagsRequest 
  { "StreamingDistributionConfigWithTags" :: (StreamingDistributionConfigWithTags)
  }
derive instance newtypeCreateStreamingDistributionWithTagsRequest :: Newtype CreateStreamingDistributionWithTagsRequest _
derive instance repGenericCreateStreamingDistributionWithTagsRequest :: Generic CreateStreamingDistributionWithTagsRequest _
instance showCreateStreamingDistributionWithTagsRequest :: Show CreateStreamingDistributionWithTagsRequest where show = genericShow
instance decodeCreateStreamingDistributionWithTagsRequest :: Decode CreateStreamingDistributionWithTagsRequest where decode = genericDecode options
instance encodeCreateStreamingDistributionWithTagsRequest :: Encode CreateStreamingDistributionWithTagsRequest where encode = genericEncode options

-- | Constructs CreateStreamingDistributionWithTagsRequest from required parameters
newCreateStreamingDistributionWithTagsRequest :: StreamingDistributionConfigWithTags -> CreateStreamingDistributionWithTagsRequest
newCreateStreamingDistributionWithTagsRequest _StreamingDistributionConfigWithTags = CreateStreamingDistributionWithTagsRequest { "StreamingDistributionConfigWithTags": _StreamingDistributionConfigWithTags }

-- | Constructs CreateStreamingDistributionWithTagsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateStreamingDistributionWithTagsRequest' :: StreamingDistributionConfigWithTags -> ( { "StreamingDistributionConfigWithTags" :: (StreamingDistributionConfigWithTags) } -> {"StreamingDistributionConfigWithTags" :: (StreamingDistributionConfigWithTags) } ) -> CreateStreamingDistributionWithTagsRequest
newCreateStreamingDistributionWithTagsRequest' _StreamingDistributionConfigWithTags customize = (CreateStreamingDistributionWithTagsRequest <<< customize) { "StreamingDistributionConfigWithTags": _StreamingDistributionConfigWithTags }



-- | <p>The returned result of the corresponding request. </p>
newtype CreateStreamingDistributionWithTagsResult = CreateStreamingDistributionWithTagsResult 
  { "StreamingDistribution" :: Maybe (StreamingDistribution)
  , "Location" :: Maybe (String)
  , "ETag" :: Maybe (String)
  }
derive instance newtypeCreateStreamingDistributionWithTagsResult :: Newtype CreateStreamingDistributionWithTagsResult _
derive instance repGenericCreateStreamingDistributionWithTagsResult :: Generic CreateStreamingDistributionWithTagsResult _
instance showCreateStreamingDistributionWithTagsResult :: Show CreateStreamingDistributionWithTagsResult where show = genericShow
instance decodeCreateStreamingDistributionWithTagsResult :: Decode CreateStreamingDistributionWithTagsResult where decode = genericDecode options
instance encodeCreateStreamingDistributionWithTagsResult :: Encode CreateStreamingDistributionWithTagsResult where encode = genericEncode options

-- | Constructs CreateStreamingDistributionWithTagsResult from required parameters
newCreateStreamingDistributionWithTagsResult :: CreateStreamingDistributionWithTagsResult
newCreateStreamingDistributionWithTagsResult  = CreateStreamingDistributionWithTagsResult { "ETag": Nothing, "Location": Nothing, "StreamingDistribution": Nothing }

-- | Constructs CreateStreamingDistributionWithTagsResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateStreamingDistributionWithTagsResult' :: ( { "StreamingDistribution" :: Maybe (StreamingDistribution) , "Location" :: Maybe (String) , "ETag" :: Maybe (String) } -> {"StreamingDistribution" :: Maybe (StreamingDistribution) , "Location" :: Maybe (String) , "ETag" :: Maybe (String) } ) -> CreateStreamingDistributionWithTagsResult
newCreateStreamingDistributionWithTagsResult'  customize = (CreateStreamingDistributionWithTagsResult <<< customize) { "ETag": Nothing, "Location": Nothing, "StreamingDistribution": Nothing }



-- | <p>A complex type that controls:</p> <ul> <li> <p>Whether CloudFront replaces HTTP status codes in the 4xx and 5xx range with custom error messages before returning the response to the viewer. </p> </li> <li> <p>How long CloudFront caches HTTP status codes in the 4xx and 5xx range.</p> </li> </ul> <p>For more information about custom error pages, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html">Customizing Error Responses</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
newtype CustomErrorResponse = CustomErrorResponse 
  { "ErrorCode" :: (Int)
  , "ResponsePagePath" :: Maybe (String)
  , "ResponseCode" :: Maybe (String)
  , "ErrorCachingMinTTL" :: Maybe (Number)
  }
derive instance newtypeCustomErrorResponse :: Newtype CustomErrorResponse _
derive instance repGenericCustomErrorResponse :: Generic CustomErrorResponse _
instance showCustomErrorResponse :: Show CustomErrorResponse where show = genericShow
instance decodeCustomErrorResponse :: Decode CustomErrorResponse where decode = genericDecode options
instance encodeCustomErrorResponse :: Encode CustomErrorResponse where encode = genericEncode options

-- | Constructs CustomErrorResponse from required parameters
newCustomErrorResponse :: Int -> CustomErrorResponse
newCustomErrorResponse _ErrorCode = CustomErrorResponse { "ErrorCode": _ErrorCode, "ErrorCachingMinTTL": Nothing, "ResponseCode": Nothing, "ResponsePagePath": Nothing }

-- | Constructs CustomErrorResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCustomErrorResponse' :: Int -> ( { "ErrorCode" :: (Int) , "ResponsePagePath" :: Maybe (String) , "ResponseCode" :: Maybe (String) , "ErrorCachingMinTTL" :: Maybe (Number) } -> {"ErrorCode" :: (Int) , "ResponsePagePath" :: Maybe (String) , "ResponseCode" :: Maybe (String) , "ErrorCachingMinTTL" :: Maybe (Number) } ) -> CustomErrorResponse
newCustomErrorResponse' _ErrorCode customize = (CustomErrorResponse <<< customize) { "ErrorCode": _ErrorCode, "ErrorCachingMinTTL": Nothing, "ResponseCode": Nothing, "ResponsePagePath": Nothing }



newtype CustomErrorResponseList = CustomErrorResponseList (Array CustomErrorResponse)
derive instance newtypeCustomErrorResponseList :: Newtype CustomErrorResponseList _
derive instance repGenericCustomErrorResponseList :: Generic CustomErrorResponseList _
instance showCustomErrorResponseList :: Show CustomErrorResponseList where show = genericShow
instance decodeCustomErrorResponseList :: Decode CustomErrorResponseList where decode = genericDecode options
instance encodeCustomErrorResponseList :: Encode CustomErrorResponseList where encode = genericEncode options



-- | <p>A complex type that controls:</p> <ul> <li> <p>Whether CloudFront replaces HTTP status codes in the 4xx and 5xx range with custom error messages before returning the response to the viewer.</p> </li> <li> <p>How long CloudFront caches HTTP status codes in the 4xx and 5xx range.</p> </li> </ul> <p>For more information about custom error pages, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html">Customizing Error Responses</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
newtype CustomErrorResponses = CustomErrorResponses 
  { "Quantity" :: (Int)
  , "Items" :: Maybe (CustomErrorResponseList)
  }
derive instance newtypeCustomErrorResponses :: Newtype CustomErrorResponses _
derive instance repGenericCustomErrorResponses :: Generic CustomErrorResponses _
instance showCustomErrorResponses :: Show CustomErrorResponses where show = genericShow
instance decodeCustomErrorResponses :: Decode CustomErrorResponses where decode = genericDecode options
instance encodeCustomErrorResponses :: Encode CustomErrorResponses where encode = genericEncode options

-- | Constructs CustomErrorResponses from required parameters
newCustomErrorResponses :: Int -> CustomErrorResponses
newCustomErrorResponses _Quantity = CustomErrorResponses { "Quantity": _Quantity, "Items": Nothing }

-- | Constructs CustomErrorResponses's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCustomErrorResponses' :: Int -> ( { "Quantity" :: (Int) , "Items" :: Maybe (CustomErrorResponseList) } -> {"Quantity" :: (Int) , "Items" :: Maybe (CustomErrorResponseList) } ) -> CustomErrorResponses
newCustomErrorResponses' _Quantity customize = (CustomErrorResponses <<< customize) { "Quantity": _Quantity, "Items": Nothing }



-- | <p>A complex type that contains the list of Custom Headers for each origin. </p>
newtype CustomHeaders = CustomHeaders 
  { "Quantity" :: (Int)
  , "Items" :: Maybe (OriginCustomHeadersList)
  }
derive instance newtypeCustomHeaders :: Newtype CustomHeaders _
derive instance repGenericCustomHeaders :: Generic CustomHeaders _
instance showCustomHeaders :: Show CustomHeaders where show = genericShow
instance decodeCustomHeaders :: Decode CustomHeaders where decode = genericDecode options
instance encodeCustomHeaders :: Encode CustomHeaders where encode = genericEncode options

-- | Constructs CustomHeaders from required parameters
newCustomHeaders :: Int -> CustomHeaders
newCustomHeaders _Quantity = CustomHeaders { "Quantity": _Quantity, "Items": Nothing }

-- | Constructs CustomHeaders's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCustomHeaders' :: Int -> ( { "Quantity" :: (Int) , "Items" :: Maybe (OriginCustomHeadersList) } -> {"Quantity" :: (Int) , "Items" :: Maybe (OriginCustomHeadersList) } ) -> CustomHeaders
newCustomHeaders' _Quantity customize = (CustomHeaders <<< customize) { "Quantity": _Quantity, "Items": Nothing }



-- | <p>A customer origin.</p>
newtype CustomOriginConfig = CustomOriginConfig 
  { "HTTPPort" :: (Int)
  , "HTTPSPort" :: (Int)
  , "OriginProtocolPolicy" :: (OriginProtocolPolicy)
  , "OriginSslProtocols" :: Maybe (OriginSslProtocols)
  }
derive instance newtypeCustomOriginConfig :: Newtype CustomOriginConfig _
derive instance repGenericCustomOriginConfig :: Generic CustomOriginConfig _
instance showCustomOriginConfig :: Show CustomOriginConfig where show = genericShow
instance decodeCustomOriginConfig :: Decode CustomOriginConfig where decode = genericDecode options
instance encodeCustomOriginConfig :: Encode CustomOriginConfig where encode = genericEncode options

-- | Constructs CustomOriginConfig from required parameters
newCustomOriginConfig :: Int -> Int -> OriginProtocolPolicy -> CustomOriginConfig
newCustomOriginConfig _HTTPPort _HTTPSPort _OriginProtocolPolicy = CustomOriginConfig { "HTTPPort": _HTTPPort, "HTTPSPort": _HTTPSPort, "OriginProtocolPolicy": _OriginProtocolPolicy, "OriginSslProtocols": Nothing }

-- | Constructs CustomOriginConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCustomOriginConfig' :: Int -> Int -> OriginProtocolPolicy -> ( { "HTTPPort" :: (Int) , "HTTPSPort" :: (Int) , "OriginProtocolPolicy" :: (OriginProtocolPolicy) , "OriginSslProtocols" :: Maybe (OriginSslProtocols) } -> {"HTTPPort" :: (Int) , "HTTPSPort" :: (Int) , "OriginProtocolPolicy" :: (OriginProtocolPolicy) , "OriginSslProtocols" :: Maybe (OriginSslProtocols) } ) -> CustomOriginConfig
newCustomOriginConfig' _HTTPPort _HTTPSPort _OriginProtocolPolicy customize = (CustomOriginConfig <<< customize) { "HTTPPort": _HTTPPort, "HTTPSPort": _HTTPSPort, "OriginProtocolPolicy": _OriginProtocolPolicy, "OriginSslProtocols": Nothing }



-- | <p>A complex type that describes the default cache behavior if you do not specify a <code>CacheBehavior</code> element or if files don't match any of the values of <code>PathPattern</code> in <code>CacheBehavior</code> elements. You must create exactly one default cache behavior.</p>
newtype DefaultCacheBehavior = DefaultCacheBehavior 
  { "TargetOriginId" :: (String)
  , "ForwardedValues" :: (ForwardedValues)
  , "TrustedSigners" :: (TrustedSigners)
  , "ViewerProtocolPolicy" :: (ViewerProtocolPolicy)
  , "MinTTL" :: (Number)
  , "AllowedMethods" :: Maybe (AllowedMethods)
  , "SmoothStreaming" :: Maybe (Boolean)
  , "DefaultTTL" :: Maybe (Number)
  , "MaxTTL" :: Maybe (Number)
  , "Compress" :: Maybe (Boolean)
  , "LambdaFunctionAssociations" :: Maybe (LambdaFunctionAssociations)
  }
derive instance newtypeDefaultCacheBehavior :: Newtype DefaultCacheBehavior _
derive instance repGenericDefaultCacheBehavior :: Generic DefaultCacheBehavior _
instance showDefaultCacheBehavior :: Show DefaultCacheBehavior where show = genericShow
instance decodeDefaultCacheBehavior :: Decode DefaultCacheBehavior where decode = genericDecode options
instance encodeDefaultCacheBehavior :: Encode DefaultCacheBehavior where encode = genericEncode options

-- | Constructs DefaultCacheBehavior from required parameters
newDefaultCacheBehavior :: ForwardedValues -> Number -> String -> TrustedSigners -> ViewerProtocolPolicy -> DefaultCacheBehavior
newDefaultCacheBehavior _ForwardedValues _MinTTL _TargetOriginId _TrustedSigners _ViewerProtocolPolicy = DefaultCacheBehavior { "ForwardedValues": _ForwardedValues, "MinTTL": _MinTTL, "TargetOriginId": _TargetOriginId, "TrustedSigners": _TrustedSigners, "ViewerProtocolPolicy": _ViewerProtocolPolicy, "AllowedMethods": Nothing, "Compress": Nothing, "DefaultTTL": Nothing, "LambdaFunctionAssociations": Nothing, "MaxTTL": Nothing, "SmoothStreaming": Nothing }

-- | Constructs DefaultCacheBehavior's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDefaultCacheBehavior' :: ForwardedValues -> Number -> String -> TrustedSigners -> ViewerProtocolPolicy -> ( { "TargetOriginId" :: (String) , "ForwardedValues" :: (ForwardedValues) , "TrustedSigners" :: (TrustedSigners) , "ViewerProtocolPolicy" :: (ViewerProtocolPolicy) , "MinTTL" :: (Number) , "AllowedMethods" :: Maybe (AllowedMethods) , "SmoothStreaming" :: Maybe (Boolean) , "DefaultTTL" :: Maybe (Number) , "MaxTTL" :: Maybe (Number) , "Compress" :: Maybe (Boolean) , "LambdaFunctionAssociations" :: Maybe (LambdaFunctionAssociations) } -> {"TargetOriginId" :: (String) , "ForwardedValues" :: (ForwardedValues) , "TrustedSigners" :: (TrustedSigners) , "ViewerProtocolPolicy" :: (ViewerProtocolPolicy) , "MinTTL" :: (Number) , "AllowedMethods" :: Maybe (AllowedMethods) , "SmoothStreaming" :: Maybe (Boolean) , "DefaultTTL" :: Maybe (Number) , "MaxTTL" :: Maybe (Number) , "Compress" :: Maybe (Boolean) , "LambdaFunctionAssociations" :: Maybe (LambdaFunctionAssociations) } ) -> DefaultCacheBehavior
newDefaultCacheBehavior' _ForwardedValues _MinTTL _TargetOriginId _TrustedSigners _ViewerProtocolPolicy customize = (DefaultCacheBehavior <<< customize) { "ForwardedValues": _ForwardedValues, "MinTTL": _MinTTL, "TargetOriginId": _TargetOriginId, "TrustedSigners": _TrustedSigners, "ViewerProtocolPolicy": _ViewerProtocolPolicy, "AllowedMethods": Nothing, "Compress": Nothing, "DefaultTTL": Nothing, "LambdaFunctionAssociations": Nothing, "MaxTTL": Nothing, "SmoothStreaming": Nothing }



-- | <p>Deletes a origin access identity.</p>
newtype DeleteCloudFrontOriginAccessIdentityRequest = DeleteCloudFrontOriginAccessIdentityRequest 
  { "Id" :: (String)
  , "IfMatch" :: Maybe (String)
  }
derive instance newtypeDeleteCloudFrontOriginAccessIdentityRequest :: Newtype DeleteCloudFrontOriginAccessIdentityRequest _
derive instance repGenericDeleteCloudFrontOriginAccessIdentityRequest :: Generic DeleteCloudFrontOriginAccessIdentityRequest _
instance showDeleteCloudFrontOriginAccessIdentityRequest :: Show DeleteCloudFrontOriginAccessIdentityRequest where show = genericShow
instance decodeDeleteCloudFrontOriginAccessIdentityRequest :: Decode DeleteCloudFrontOriginAccessIdentityRequest where decode = genericDecode options
instance encodeDeleteCloudFrontOriginAccessIdentityRequest :: Encode DeleteCloudFrontOriginAccessIdentityRequest where encode = genericEncode options

-- | Constructs DeleteCloudFrontOriginAccessIdentityRequest from required parameters
newDeleteCloudFrontOriginAccessIdentityRequest :: String -> DeleteCloudFrontOriginAccessIdentityRequest
newDeleteCloudFrontOriginAccessIdentityRequest _Id = DeleteCloudFrontOriginAccessIdentityRequest { "Id": _Id, "IfMatch": Nothing }

-- | Constructs DeleteCloudFrontOriginAccessIdentityRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteCloudFrontOriginAccessIdentityRequest' :: String -> ( { "Id" :: (String) , "IfMatch" :: Maybe (String) } -> {"Id" :: (String) , "IfMatch" :: Maybe (String) } ) -> DeleteCloudFrontOriginAccessIdentityRequest
newDeleteCloudFrontOriginAccessIdentityRequest' _Id customize = (DeleteCloudFrontOriginAccessIdentityRequest <<< customize) { "Id": _Id, "IfMatch": Nothing }



-- | <p>This action deletes a web distribution. To delete a web distribution using the CloudFront API, perform the following steps.</p> <p> <b>To delete a web distribution using the CloudFront API:</b> </p> <ol> <li> <p>Disable the web distribution </p> </li> <li> <p>Submit a <code>GET Distribution Config</code> request to get the current configuration and the <code>Etag</code> header for the distribution.</p> </li> <li> <p>Update the XML document that was returned in the response to your <code>GET Distribution Config</code> request to change the value of <code>Enabled</code> to <code>false</code>.</p> </li> <li> <p>Submit a <code>PUT Distribution Config</code> request to update the configuration for your distribution. In the request body, include the XML document that you updated in Step 3. Set the value of the HTTP <code>If-Match</code> header to the value of the <code>ETag</code> header that CloudFront returned when you submitted the <code>GET Distribution Config</code> request in Step 2.</p> </li> <li> <p>Review the response to the <code>PUT Distribution Config</code> request to confirm that the distribution was successfully disabled.</p> </li> <li> <p>Submit a <code>GET Distribution</code> request to confirm that your changes have propagated. When propagation is complete, the value of <code>Status</code> is <code>Deployed</code>.</p> </li> <li> <p>Submit a <code>DELETE Distribution</code> request. Set the value of the HTTP <code>If-Match</code> header to the value of the <code>ETag</code> header that CloudFront returned when you submitted the <code>GET Distribution Config</code> request in Step 6.</p> </li> <li> <p>Review the response to your <code>DELETE Distribution</code> request to confirm that the distribution was successfully deleted.</p> </li> </ol> <p>For information about deleting a distribution using the CloudFront console, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/HowToDeleteDistribution.html">Deleting a Distribution</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
newtype DeleteDistributionRequest = DeleteDistributionRequest 
  { "Id" :: (String)
  , "IfMatch" :: Maybe (String)
  }
derive instance newtypeDeleteDistributionRequest :: Newtype DeleteDistributionRequest _
derive instance repGenericDeleteDistributionRequest :: Generic DeleteDistributionRequest _
instance showDeleteDistributionRequest :: Show DeleteDistributionRequest where show = genericShow
instance decodeDeleteDistributionRequest :: Decode DeleteDistributionRequest where decode = genericDecode options
instance encodeDeleteDistributionRequest :: Encode DeleteDistributionRequest where encode = genericEncode options

-- | Constructs DeleteDistributionRequest from required parameters
newDeleteDistributionRequest :: String -> DeleteDistributionRequest
newDeleteDistributionRequest _Id = DeleteDistributionRequest { "Id": _Id, "IfMatch": Nothing }

-- | Constructs DeleteDistributionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteDistributionRequest' :: String -> ( { "Id" :: (String) , "IfMatch" :: Maybe (String) } -> {"Id" :: (String) , "IfMatch" :: Maybe (String) } ) -> DeleteDistributionRequest
newDeleteDistributionRequest' _Id customize = (DeleteDistributionRequest <<< customize) { "Id": _Id, "IfMatch": Nothing }



-- | <p>The request to delete a streaming distribution.</p>
newtype DeleteStreamingDistributionRequest = DeleteStreamingDistributionRequest 
  { "Id" :: (String)
  , "IfMatch" :: Maybe (String)
  }
derive instance newtypeDeleteStreamingDistributionRequest :: Newtype DeleteStreamingDistributionRequest _
derive instance repGenericDeleteStreamingDistributionRequest :: Generic DeleteStreamingDistributionRequest _
instance showDeleteStreamingDistributionRequest :: Show DeleteStreamingDistributionRequest where show = genericShow
instance decodeDeleteStreamingDistributionRequest :: Decode DeleteStreamingDistributionRequest where decode = genericDecode options
instance encodeDeleteStreamingDistributionRequest :: Encode DeleteStreamingDistributionRequest where encode = genericEncode options

-- | Constructs DeleteStreamingDistributionRequest from required parameters
newDeleteStreamingDistributionRequest :: String -> DeleteStreamingDistributionRequest
newDeleteStreamingDistributionRequest _Id = DeleteStreamingDistributionRequest { "Id": _Id, "IfMatch": Nothing }

-- | Constructs DeleteStreamingDistributionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteStreamingDistributionRequest' :: String -> ( { "Id" :: (String) , "IfMatch" :: Maybe (String) } -> {"Id" :: (String) , "IfMatch" :: Maybe (String) } ) -> DeleteStreamingDistributionRequest
newDeleteStreamingDistributionRequest' _Id customize = (DeleteStreamingDistributionRequest <<< customize) { "Id": _Id, "IfMatch": Nothing }



-- | <p>The distribution's information.</p>
newtype Distribution = Distribution 
  { "Id" :: (String)
  , "ARN" :: (String)
  , "Status" :: (String)
  , "LastModifiedTime" :: (Types.Timestamp)
  , "InProgressInvalidationBatches" :: (Int)
  , "DomainName" :: (String)
  , "ActiveTrustedSigners" :: (ActiveTrustedSigners)
  , "DistributionConfig" :: (DistributionConfig)
  }
derive instance newtypeDistribution :: Newtype Distribution _
derive instance repGenericDistribution :: Generic Distribution _
instance showDistribution :: Show Distribution where show = genericShow
instance decodeDistribution :: Decode Distribution where decode = genericDecode options
instance encodeDistribution :: Encode Distribution where encode = genericEncode options

-- | Constructs Distribution from required parameters
newDistribution :: String -> ActiveTrustedSigners -> DistributionConfig -> String -> String -> Int -> Types.Timestamp -> String -> Distribution
newDistribution _ARN _ActiveTrustedSigners _DistributionConfig _DomainName _Id _InProgressInvalidationBatches _LastModifiedTime _Status = Distribution { "ARN": _ARN, "ActiveTrustedSigners": _ActiveTrustedSigners, "DistributionConfig": _DistributionConfig, "DomainName": _DomainName, "Id": _Id, "InProgressInvalidationBatches": _InProgressInvalidationBatches, "LastModifiedTime": _LastModifiedTime, "Status": _Status }

-- | Constructs Distribution's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDistribution' :: String -> ActiveTrustedSigners -> DistributionConfig -> String -> String -> Int -> Types.Timestamp -> String -> ( { "Id" :: (String) , "ARN" :: (String) , "Status" :: (String) , "LastModifiedTime" :: (Types.Timestamp) , "InProgressInvalidationBatches" :: (Int) , "DomainName" :: (String) , "ActiveTrustedSigners" :: (ActiveTrustedSigners) , "DistributionConfig" :: (DistributionConfig) } -> {"Id" :: (String) , "ARN" :: (String) , "Status" :: (String) , "LastModifiedTime" :: (Types.Timestamp) , "InProgressInvalidationBatches" :: (Int) , "DomainName" :: (String) , "ActiveTrustedSigners" :: (ActiveTrustedSigners) , "DistributionConfig" :: (DistributionConfig) } ) -> Distribution
newDistribution' _ARN _ActiveTrustedSigners _DistributionConfig _DomainName _Id _InProgressInvalidationBatches _LastModifiedTime _Status customize = (Distribution <<< customize) { "ARN": _ARN, "ActiveTrustedSigners": _ActiveTrustedSigners, "DistributionConfig": _DistributionConfig, "DomainName": _DomainName, "Id": _Id, "InProgressInvalidationBatches": _InProgressInvalidationBatches, "LastModifiedTime": _LastModifiedTime, "Status": _Status }



-- | <p>The caller reference you attempted to create the distribution with is associated with another distribution.</p>
newtype DistributionAlreadyExists = DistributionAlreadyExists 
  { "Message" :: Maybe (String)
  }
derive instance newtypeDistributionAlreadyExists :: Newtype DistributionAlreadyExists _
derive instance repGenericDistributionAlreadyExists :: Generic DistributionAlreadyExists _
instance showDistributionAlreadyExists :: Show DistributionAlreadyExists where show = genericShow
instance decodeDistributionAlreadyExists :: Decode DistributionAlreadyExists where decode = genericDecode options
instance encodeDistributionAlreadyExists :: Encode DistributionAlreadyExists where encode = genericEncode options

-- | Constructs DistributionAlreadyExists from required parameters
newDistributionAlreadyExists :: DistributionAlreadyExists
newDistributionAlreadyExists  = DistributionAlreadyExists { "Message": Nothing }

-- | Constructs DistributionAlreadyExists's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDistributionAlreadyExists' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> DistributionAlreadyExists
newDistributionAlreadyExists'  customize = (DistributionAlreadyExists <<< customize) { "Message": Nothing }



-- | <p>A distribution configuration.</p>
newtype DistributionConfig = DistributionConfig 
  { "CallerReference" :: (String)
  , "Aliases" :: Maybe (Aliases)
  , "DefaultRootObject" :: Maybe (String)
  , "Origins" :: (Origins)
  , "DefaultCacheBehavior" :: (DefaultCacheBehavior)
  , "CacheBehaviors" :: Maybe (CacheBehaviors)
  , "CustomErrorResponses" :: Maybe (CustomErrorResponses)
  , "Comment" :: (String)
  , "Logging" :: Maybe (LoggingConfig)
  , "PriceClass" :: Maybe (PriceClass)
  , "Enabled" :: (Boolean)
  , "ViewerCertificate" :: Maybe (ViewerCertificate)
  , "Restrictions" :: Maybe (Restrictions)
  , "WebACLId" :: Maybe (String)
  , "HttpVersion" :: Maybe (HttpVersion)
  , "IsIPV6Enabled" :: Maybe (Boolean)
  }
derive instance newtypeDistributionConfig :: Newtype DistributionConfig _
derive instance repGenericDistributionConfig :: Generic DistributionConfig _
instance showDistributionConfig :: Show DistributionConfig where show = genericShow
instance decodeDistributionConfig :: Decode DistributionConfig where decode = genericDecode options
instance encodeDistributionConfig :: Encode DistributionConfig where encode = genericEncode options

-- | Constructs DistributionConfig from required parameters
newDistributionConfig :: String -> String -> DefaultCacheBehavior -> Boolean -> Origins -> DistributionConfig
newDistributionConfig _CallerReference _Comment _DefaultCacheBehavior _Enabled _Origins = DistributionConfig { "CallerReference": _CallerReference, "Comment": _Comment, "DefaultCacheBehavior": _DefaultCacheBehavior, "Enabled": _Enabled, "Origins": _Origins, "Aliases": Nothing, "CacheBehaviors": Nothing, "CustomErrorResponses": Nothing, "DefaultRootObject": Nothing, "HttpVersion": Nothing, "IsIPV6Enabled": Nothing, "Logging": Nothing, "PriceClass": Nothing, "Restrictions": Nothing, "ViewerCertificate": Nothing, "WebACLId": Nothing }

-- | Constructs DistributionConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDistributionConfig' :: String -> String -> DefaultCacheBehavior -> Boolean -> Origins -> ( { "CallerReference" :: (String) , "Aliases" :: Maybe (Aliases) , "DefaultRootObject" :: Maybe (String) , "Origins" :: (Origins) , "DefaultCacheBehavior" :: (DefaultCacheBehavior) , "CacheBehaviors" :: Maybe (CacheBehaviors) , "CustomErrorResponses" :: Maybe (CustomErrorResponses) , "Comment" :: (String) , "Logging" :: Maybe (LoggingConfig) , "PriceClass" :: Maybe (PriceClass) , "Enabled" :: (Boolean) , "ViewerCertificate" :: Maybe (ViewerCertificate) , "Restrictions" :: Maybe (Restrictions) , "WebACLId" :: Maybe (String) , "HttpVersion" :: Maybe (HttpVersion) , "IsIPV6Enabled" :: Maybe (Boolean) } -> {"CallerReference" :: (String) , "Aliases" :: Maybe (Aliases) , "DefaultRootObject" :: Maybe (String) , "Origins" :: (Origins) , "DefaultCacheBehavior" :: (DefaultCacheBehavior) , "CacheBehaviors" :: Maybe (CacheBehaviors) , "CustomErrorResponses" :: Maybe (CustomErrorResponses) , "Comment" :: (String) , "Logging" :: Maybe (LoggingConfig) , "PriceClass" :: Maybe (PriceClass) , "Enabled" :: (Boolean) , "ViewerCertificate" :: Maybe (ViewerCertificate) , "Restrictions" :: Maybe (Restrictions) , "WebACLId" :: Maybe (String) , "HttpVersion" :: Maybe (HttpVersion) , "IsIPV6Enabled" :: Maybe (Boolean) } ) -> DistributionConfig
newDistributionConfig' _CallerReference _Comment _DefaultCacheBehavior _Enabled _Origins customize = (DistributionConfig <<< customize) { "CallerReference": _CallerReference, "Comment": _Comment, "DefaultCacheBehavior": _DefaultCacheBehavior, "Enabled": _Enabled, "Origins": _Origins, "Aliases": Nothing, "CacheBehaviors": Nothing, "CustomErrorResponses": Nothing, "DefaultRootObject": Nothing, "HttpVersion": Nothing, "IsIPV6Enabled": Nothing, "Logging": Nothing, "PriceClass": Nothing, "Restrictions": Nothing, "ViewerCertificate": Nothing, "WebACLId": Nothing }



-- | <p>A distribution Configuration and a list of tags to be associated with the distribution.</p>
newtype DistributionConfigWithTags = DistributionConfigWithTags 
  { "DistributionConfig" :: (DistributionConfig)
  , "Tags" :: (Tags)
  }
derive instance newtypeDistributionConfigWithTags :: Newtype DistributionConfigWithTags _
derive instance repGenericDistributionConfigWithTags :: Generic DistributionConfigWithTags _
instance showDistributionConfigWithTags :: Show DistributionConfigWithTags where show = genericShow
instance decodeDistributionConfigWithTags :: Decode DistributionConfigWithTags where decode = genericDecode options
instance encodeDistributionConfigWithTags :: Encode DistributionConfigWithTags where encode = genericEncode options

-- | Constructs DistributionConfigWithTags from required parameters
newDistributionConfigWithTags :: DistributionConfig -> Tags -> DistributionConfigWithTags
newDistributionConfigWithTags _DistributionConfig _Tags = DistributionConfigWithTags { "DistributionConfig": _DistributionConfig, "Tags": _Tags }

-- | Constructs DistributionConfigWithTags's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDistributionConfigWithTags' :: DistributionConfig -> Tags -> ( { "DistributionConfig" :: (DistributionConfig) , "Tags" :: (Tags) } -> {"DistributionConfig" :: (DistributionConfig) , "Tags" :: (Tags) } ) -> DistributionConfigWithTags
newDistributionConfigWithTags' _DistributionConfig _Tags customize = (DistributionConfigWithTags <<< customize) { "DistributionConfig": _DistributionConfig, "Tags": _Tags }



-- | <p>A distribution list.</p>
newtype DistributionList = DistributionList 
  { "Marker" :: (String)
  , "NextMarker" :: Maybe (String)
  , "MaxItems" :: (Int)
  , "IsTruncated" :: (Boolean)
  , "Quantity" :: (Int)
  , "Items" :: Maybe (DistributionSummaryList)
  }
derive instance newtypeDistributionList :: Newtype DistributionList _
derive instance repGenericDistributionList :: Generic DistributionList _
instance showDistributionList :: Show DistributionList where show = genericShow
instance decodeDistributionList :: Decode DistributionList where decode = genericDecode options
instance encodeDistributionList :: Encode DistributionList where encode = genericEncode options

-- | Constructs DistributionList from required parameters
newDistributionList :: Boolean -> String -> Int -> Int -> DistributionList
newDistributionList _IsTruncated _Marker _MaxItems _Quantity = DistributionList { "IsTruncated": _IsTruncated, "Marker": _Marker, "MaxItems": _MaxItems, "Quantity": _Quantity, "Items": Nothing, "NextMarker": Nothing }

-- | Constructs DistributionList's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDistributionList' :: Boolean -> String -> Int -> Int -> ( { "Marker" :: (String) , "NextMarker" :: Maybe (String) , "MaxItems" :: (Int) , "IsTruncated" :: (Boolean) , "Quantity" :: (Int) , "Items" :: Maybe (DistributionSummaryList) } -> {"Marker" :: (String) , "NextMarker" :: Maybe (String) , "MaxItems" :: (Int) , "IsTruncated" :: (Boolean) , "Quantity" :: (Int) , "Items" :: Maybe (DistributionSummaryList) } ) -> DistributionList
newDistributionList' _IsTruncated _Marker _MaxItems _Quantity customize = (DistributionList <<< customize) { "IsTruncated": _IsTruncated, "Marker": _Marker, "MaxItems": _MaxItems, "Quantity": _Quantity, "Items": Nothing, "NextMarker": Nothing }



newtype DistributionNotDisabled = DistributionNotDisabled 
  { "Message" :: Maybe (String)
  }
derive instance newtypeDistributionNotDisabled :: Newtype DistributionNotDisabled _
derive instance repGenericDistributionNotDisabled :: Generic DistributionNotDisabled _
instance showDistributionNotDisabled :: Show DistributionNotDisabled where show = genericShow
instance decodeDistributionNotDisabled :: Decode DistributionNotDisabled where decode = genericDecode options
instance encodeDistributionNotDisabled :: Encode DistributionNotDisabled where encode = genericEncode options

-- | Constructs DistributionNotDisabled from required parameters
newDistributionNotDisabled :: DistributionNotDisabled
newDistributionNotDisabled  = DistributionNotDisabled { "Message": Nothing }

-- | Constructs DistributionNotDisabled's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDistributionNotDisabled' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> DistributionNotDisabled
newDistributionNotDisabled'  customize = (DistributionNotDisabled <<< customize) { "Message": Nothing }



-- | <p>A summary of the information about a CloudFront distribution.</p>
newtype DistributionSummary = DistributionSummary 
  { "Id" :: (String)
  , "ARN" :: (String)
  , "Status" :: (String)
  , "LastModifiedTime" :: (Types.Timestamp)
  , "DomainName" :: (String)
  , "Aliases" :: (Aliases)
  , "Origins" :: (Origins)
  , "DefaultCacheBehavior" :: (DefaultCacheBehavior)
  , "CacheBehaviors" :: (CacheBehaviors)
  , "CustomErrorResponses" :: (CustomErrorResponses)
  , "Comment" :: (String)
  , "PriceClass" :: (PriceClass)
  , "Enabled" :: (Boolean)
  , "ViewerCertificate" :: (ViewerCertificate)
  , "Restrictions" :: (Restrictions)
  , "WebACLId" :: (String)
  , "HttpVersion" :: (HttpVersion)
  , "IsIPV6Enabled" :: (Boolean)
  }
derive instance newtypeDistributionSummary :: Newtype DistributionSummary _
derive instance repGenericDistributionSummary :: Generic DistributionSummary _
instance showDistributionSummary :: Show DistributionSummary where show = genericShow
instance decodeDistributionSummary :: Decode DistributionSummary where decode = genericDecode options
instance encodeDistributionSummary :: Encode DistributionSummary where encode = genericEncode options

-- | Constructs DistributionSummary from required parameters
newDistributionSummary :: String -> Aliases -> CacheBehaviors -> String -> CustomErrorResponses -> DefaultCacheBehavior -> String -> Boolean -> HttpVersion -> String -> Boolean -> Types.Timestamp -> Origins -> PriceClass -> Restrictions -> String -> ViewerCertificate -> String -> DistributionSummary
newDistributionSummary _ARN _Aliases _CacheBehaviors _Comment _CustomErrorResponses _DefaultCacheBehavior _DomainName _Enabled _HttpVersion _Id _IsIPV6Enabled _LastModifiedTime _Origins _PriceClass _Restrictions _Status _ViewerCertificate _WebACLId = DistributionSummary { "ARN": _ARN, "Aliases": _Aliases, "CacheBehaviors": _CacheBehaviors, "Comment": _Comment, "CustomErrorResponses": _CustomErrorResponses, "DefaultCacheBehavior": _DefaultCacheBehavior, "DomainName": _DomainName, "Enabled": _Enabled, "HttpVersion": _HttpVersion, "Id": _Id, "IsIPV6Enabled": _IsIPV6Enabled, "LastModifiedTime": _LastModifiedTime, "Origins": _Origins, "PriceClass": _PriceClass, "Restrictions": _Restrictions, "Status": _Status, "ViewerCertificate": _ViewerCertificate, "WebACLId": _WebACLId }

-- | Constructs DistributionSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDistributionSummary' :: String -> Aliases -> CacheBehaviors -> String -> CustomErrorResponses -> DefaultCacheBehavior -> String -> Boolean -> HttpVersion -> String -> Boolean -> Types.Timestamp -> Origins -> PriceClass -> Restrictions -> String -> ViewerCertificate -> String -> ( { "Id" :: (String) , "ARN" :: (String) , "Status" :: (String) , "LastModifiedTime" :: (Types.Timestamp) , "DomainName" :: (String) , "Aliases" :: (Aliases) , "Origins" :: (Origins) , "DefaultCacheBehavior" :: (DefaultCacheBehavior) , "CacheBehaviors" :: (CacheBehaviors) , "CustomErrorResponses" :: (CustomErrorResponses) , "Comment" :: (String) , "PriceClass" :: (PriceClass) , "Enabled" :: (Boolean) , "ViewerCertificate" :: (ViewerCertificate) , "Restrictions" :: (Restrictions) , "WebACLId" :: (String) , "HttpVersion" :: (HttpVersion) , "IsIPV6Enabled" :: (Boolean) } -> {"Id" :: (String) , "ARN" :: (String) , "Status" :: (String) , "LastModifiedTime" :: (Types.Timestamp) , "DomainName" :: (String) , "Aliases" :: (Aliases) , "Origins" :: (Origins) , "DefaultCacheBehavior" :: (DefaultCacheBehavior) , "CacheBehaviors" :: (CacheBehaviors) , "CustomErrorResponses" :: (CustomErrorResponses) , "Comment" :: (String) , "PriceClass" :: (PriceClass) , "Enabled" :: (Boolean) , "ViewerCertificate" :: (ViewerCertificate) , "Restrictions" :: (Restrictions) , "WebACLId" :: (String) , "HttpVersion" :: (HttpVersion) , "IsIPV6Enabled" :: (Boolean) } ) -> DistributionSummary
newDistributionSummary' _ARN _Aliases _CacheBehaviors _Comment _CustomErrorResponses _DefaultCacheBehavior _DomainName _Enabled _HttpVersion _Id _IsIPV6Enabled _LastModifiedTime _Origins _PriceClass _Restrictions _Status _ViewerCertificate _WebACLId customize = (DistributionSummary <<< customize) { "ARN": _ARN, "Aliases": _Aliases, "CacheBehaviors": _CacheBehaviors, "Comment": _Comment, "CustomErrorResponses": _CustomErrorResponses, "DefaultCacheBehavior": _DefaultCacheBehavior, "DomainName": _DomainName, "Enabled": _Enabled, "HttpVersion": _HttpVersion, "Id": _Id, "IsIPV6Enabled": _IsIPV6Enabled, "LastModifiedTime": _LastModifiedTime, "Origins": _Origins, "PriceClass": _PriceClass, "Restrictions": _Restrictions, "Status": _Status, "ViewerCertificate": _ViewerCertificate, "WebACLId": _WebACLId }



newtype DistributionSummaryList = DistributionSummaryList (Array DistributionSummary)
derive instance newtypeDistributionSummaryList :: Newtype DistributionSummaryList _
derive instance repGenericDistributionSummaryList :: Generic DistributionSummaryList _
instance showDistributionSummaryList :: Show DistributionSummaryList where show = genericShow
instance decodeDistributionSummaryList :: Decode DistributionSummaryList where decode = genericDecode options
instance encodeDistributionSummaryList :: Encode DistributionSummaryList where encode = genericEncode options



newtype EventType = EventType String
derive instance newtypeEventType :: Newtype EventType _
derive instance repGenericEventType :: Generic EventType _
instance showEventType :: Show EventType where show = genericShow
instance decodeEventType :: Decode EventType where decode = genericDecode options
instance encodeEventType :: Encode EventType where encode = genericEncode options



-- | <p>A complex type that specifies how CloudFront handles query strings and cookies.</p>
newtype ForwardedValues = ForwardedValues 
  { "QueryString" :: (Boolean)
  , "Cookies" :: (CookiePreference)
  , "Headers" :: Maybe (Headers)
  , "QueryStringCacheKeys" :: Maybe (QueryStringCacheKeys)
  }
derive instance newtypeForwardedValues :: Newtype ForwardedValues _
derive instance repGenericForwardedValues :: Generic ForwardedValues _
instance showForwardedValues :: Show ForwardedValues where show = genericShow
instance decodeForwardedValues :: Decode ForwardedValues where decode = genericDecode options
instance encodeForwardedValues :: Encode ForwardedValues where encode = genericEncode options

-- | Constructs ForwardedValues from required parameters
newForwardedValues :: CookiePreference -> Boolean -> ForwardedValues
newForwardedValues _Cookies _QueryString = ForwardedValues { "Cookies": _Cookies, "QueryString": _QueryString, "Headers": Nothing, "QueryStringCacheKeys": Nothing }

-- | Constructs ForwardedValues's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newForwardedValues' :: CookiePreference -> Boolean -> ( { "QueryString" :: (Boolean) , "Cookies" :: (CookiePreference) , "Headers" :: Maybe (Headers) , "QueryStringCacheKeys" :: Maybe (QueryStringCacheKeys) } -> {"QueryString" :: (Boolean) , "Cookies" :: (CookiePreference) , "Headers" :: Maybe (Headers) , "QueryStringCacheKeys" :: Maybe (QueryStringCacheKeys) } ) -> ForwardedValues
newForwardedValues' _Cookies _QueryString customize = (ForwardedValues <<< customize) { "Cookies": _Cookies, "QueryString": _QueryString, "Headers": Nothing, "QueryStringCacheKeys": Nothing }



-- | <p>A complex type that controls the countries in which your content is distributed. CloudFront determines the location of your users using <code>MaxMind</code> GeoIP databases. </p>
newtype GeoRestriction = GeoRestriction 
  { "RestrictionType" :: (GeoRestrictionType)
  , "Quantity" :: (Int)
  , "Items" :: Maybe (LocationList)
  }
derive instance newtypeGeoRestriction :: Newtype GeoRestriction _
derive instance repGenericGeoRestriction :: Generic GeoRestriction _
instance showGeoRestriction :: Show GeoRestriction where show = genericShow
instance decodeGeoRestriction :: Decode GeoRestriction where decode = genericDecode options
instance encodeGeoRestriction :: Encode GeoRestriction where encode = genericEncode options

-- | Constructs GeoRestriction from required parameters
newGeoRestriction :: Int -> GeoRestrictionType -> GeoRestriction
newGeoRestriction _Quantity _RestrictionType = GeoRestriction { "Quantity": _Quantity, "RestrictionType": _RestrictionType, "Items": Nothing }

-- | Constructs GeoRestriction's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGeoRestriction' :: Int -> GeoRestrictionType -> ( { "RestrictionType" :: (GeoRestrictionType) , "Quantity" :: (Int) , "Items" :: Maybe (LocationList) } -> {"RestrictionType" :: (GeoRestrictionType) , "Quantity" :: (Int) , "Items" :: Maybe (LocationList) } ) -> GeoRestriction
newGeoRestriction' _Quantity _RestrictionType customize = (GeoRestriction <<< customize) { "Quantity": _Quantity, "RestrictionType": _RestrictionType, "Items": Nothing }



newtype GeoRestrictionType = GeoRestrictionType String
derive instance newtypeGeoRestrictionType :: Newtype GeoRestrictionType _
derive instance repGenericGeoRestrictionType :: Generic GeoRestrictionType _
instance showGeoRestrictionType :: Show GeoRestrictionType where show = genericShow
instance decodeGeoRestrictionType :: Decode GeoRestrictionType where decode = genericDecode options
instance encodeGeoRestrictionType :: Encode GeoRestrictionType where encode = genericEncode options



-- | <p>The origin access identity's configuration information. For more information, see <a>CloudFrontOriginAccessIdentityConfigComplexType</a>.</p>
newtype GetCloudFrontOriginAccessIdentityConfigRequest = GetCloudFrontOriginAccessIdentityConfigRequest 
  { "Id" :: (String)
  }
derive instance newtypeGetCloudFrontOriginAccessIdentityConfigRequest :: Newtype GetCloudFrontOriginAccessIdentityConfigRequest _
derive instance repGenericGetCloudFrontOriginAccessIdentityConfigRequest :: Generic GetCloudFrontOriginAccessIdentityConfigRequest _
instance showGetCloudFrontOriginAccessIdentityConfigRequest :: Show GetCloudFrontOriginAccessIdentityConfigRequest where show = genericShow
instance decodeGetCloudFrontOriginAccessIdentityConfigRequest :: Decode GetCloudFrontOriginAccessIdentityConfigRequest where decode = genericDecode options
instance encodeGetCloudFrontOriginAccessIdentityConfigRequest :: Encode GetCloudFrontOriginAccessIdentityConfigRequest where encode = genericEncode options

-- | Constructs GetCloudFrontOriginAccessIdentityConfigRequest from required parameters
newGetCloudFrontOriginAccessIdentityConfigRequest :: String -> GetCloudFrontOriginAccessIdentityConfigRequest
newGetCloudFrontOriginAccessIdentityConfigRequest _Id = GetCloudFrontOriginAccessIdentityConfigRequest { "Id": _Id }

-- | Constructs GetCloudFrontOriginAccessIdentityConfigRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetCloudFrontOriginAccessIdentityConfigRequest' :: String -> ( { "Id" :: (String) } -> {"Id" :: (String) } ) -> GetCloudFrontOriginAccessIdentityConfigRequest
newGetCloudFrontOriginAccessIdentityConfigRequest' _Id customize = (GetCloudFrontOriginAccessIdentityConfigRequest <<< customize) { "Id": _Id }



-- | <p>The returned result of the corresponding request.</p>
newtype GetCloudFrontOriginAccessIdentityConfigResult = GetCloudFrontOriginAccessIdentityConfigResult 
  { "CloudFrontOriginAccessIdentityConfig" :: Maybe (CloudFrontOriginAccessIdentityConfig)
  , "ETag" :: Maybe (String)
  }
derive instance newtypeGetCloudFrontOriginAccessIdentityConfigResult :: Newtype GetCloudFrontOriginAccessIdentityConfigResult _
derive instance repGenericGetCloudFrontOriginAccessIdentityConfigResult :: Generic GetCloudFrontOriginAccessIdentityConfigResult _
instance showGetCloudFrontOriginAccessIdentityConfigResult :: Show GetCloudFrontOriginAccessIdentityConfigResult where show = genericShow
instance decodeGetCloudFrontOriginAccessIdentityConfigResult :: Decode GetCloudFrontOriginAccessIdentityConfigResult where decode = genericDecode options
instance encodeGetCloudFrontOriginAccessIdentityConfigResult :: Encode GetCloudFrontOriginAccessIdentityConfigResult where encode = genericEncode options

-- | Constructs GetCloudFrontOriginAccessIdentityConfigResult from required parameters
newGetCloudFrontOriginAccessIdentityConfigResult :: GetCloudFrontOriginAccessIdentityConfigResult
newGetCloudFrontOriginAccessIdentityConfigResult  = GetCloudFrontOriginAccessIdentityConfigResult { "CloudFrontOriginAccessIdentityConfig": Nothing, "ETag": Nothing }

-- | Constructs GetCloudFrontOriginAccessIdentityConfigResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetCloudFrontOriginAccessIdentityConfigResult' :: ( { "CloudFrontOriginAccessIdentityConfig" :: Maybe (CloudFrontOriginAccessIdentityConfig) , "ETag" :: Maybe (String) } -> {"CloudFrontOriginAccessIdentityConfig" :: Maybe (CloudFrontOriginAccessIdentityConfig) , "ETag" :: Maybe (String) } ) -> GetCloudFrontOriginAccessIdentityConfigResult
newGetCloudFrontOriginAccessIdentityConfigResult'  customize = (GetCloudFrontOriginAccessIdentityConfigResult <<< customize) { "CloudFrontOriginAccessIdentityConfig": Nothing, "ETag": Nothing }



-- | <p>The request to get an origin access identity's information.</p>
newtype GetCloudFrontOriginAccessIdentityRequest = GetCloudFrontOriginAccessIdentityRequest 
  { "Id" :: (String)
  }
derive instance newtypeGetCloudFrontOriginAccessIdentityRequest :: Newtype GetCloudFrontOriginAccessIdentityRequest _
derive instance repGenericGetCloudFrontOriginAccessIdentityRequest :: Generic GetCloudFrontOriginAccessIdentityRequest _
instance showGetCloudFrontOriginAccessIdentityRequest :: Show GetCloudFrontOriginAccessIdentityRequest where show = genericShow
instance decodeGetCloudFrontOriginAccessIdentityRequest :: Decode GetCloudFrontOriginAccessIdentityRequest where decode = genericDecode options
instance encodeGetCloudFrontOriginAccessIdentityRequest :: Encode GetCloudFrontOriginAccessIdentityRequest where encode = genericEncode options

-- | Constructs GetCloudFrontOriginAccessIdentityRequest from required parameters
newGetCloudFrontOriginAccessIdentityRequest :: String -> GetCloudFrontOriginAccessIdentityRequest
newGetCloudFrontOriginAccessIdentityRequest _Id = GetCloudFrontOriginAccessIdentityRequest { "Id": _Id }

-- | Constructs GetCloudFrontOriginAccessIdentityRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetCloudFrontOriginAccessIdentityRequest' :: String -> ( { "Id" :: (String) } -> {"Id" :: (String) } ) -> GetCloudFrontOriginAccessIdentityRequest
newGetCloudFrontOriginAccessIdentityRequest' _Id customize = (GetCloudFrontOriginAccessIdentityRequest <<< customize) { "Id": _Id }



-- | <p>The returned result of the corresponding request.</p>
newtype GetCloudFrontOriginAccessIdentityResult = GetCloudFrontOriginAccessIdentityResult 
  { "CloudFrontOriginAccessIdentity" :: Maybe (CloudFrontOriginAccessIdentity)
  , "ETag" :: Maybe (String)
  }
derive instance newtypeGetCloudFrontOriginAccessIdentityResult :: Newtype GetCloudFrontOriginAccessIdentityResult _
derive instance repGenericGetCloudFrontOriginAccessIdentityResult :: Generic GetCloudFrontOriginAccessIdentityResult _
instance showGetCloudFrontOriginAccessIdentityResult :: Show GetCloudFrontOriginAccessIdentityResult where show = genericShow
instance decodeGetCloudFrontOriginAccessIdentityResult :: Decode GetCloudFrontOriginAccessIdentityResult where decode = genericDecode options
instance encodeGetCloudFrontOriginAccessIdentityResult :: Encode GetCloudFrontOriginAccessIdentityResult where encode = genericEncode options

-- | Constructs GetCloudFrontOriginAccessIdentityResult from required parameters
newGetCloudFrontOriginAccessIdentityResult :: GetCloudFrontOriginAccessIdentityResult
newGetCloudFrontOriginAccessIdentityResult  = GetCloudFrontOriginAccessIdentityResult { "CloudFrontOriginAccessIdentity": Nothing, "ETag": Nothing }

-- | Constructs GetCloudFrontOriginAccessIdentityResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetCloudFrontOriginAccessIdentityResult' :: ( { "CloudFrontOriginAccessIdentity" :: Maybe (CloudFrontOriginAccessIdentity) , "ETag" :: Maybe (String) } -> {"CloudFrontOriginAccessIdentity" :: Maybe (CloudFrontOriginAccessIdentity) , "ETag" :: Maybe (String) } ) -> GetCloudFrontOriginAccessIdentityResult
newGetCloudFrontOriginAccessIdentityResult'  customize = (GetCloudFrontOriginAccessIdentityResult <<< customize) { "CloudFrontOriginAccessIdentity": Nothing, "ETag": Nothing }



-- | <p>The request to get a distribution configuration.</p>
newtype GetDistributionConfigRequest = GetDistributionConfigRequest 
  { "Id" :: (String)
  }
derive instance newtypeGetDistributionConfigRequest :: Newtype GetDistributionConfigRequest _
derive instance repGenericGetDistributionConfigRequest :: Generic GetDistributionConfigRequest _
instance showGetDistributionConfigRequest :: Show GetDistributionConfigRequest where show = genericShow
instance decodeGetDistributionConfigRequest :: Decode GetDistributionConfigRequest where decode = genericDecode options
instance encodeGetDistributionConfigRequest :: Encode GetDistributionConfigRequest where encode = genericEncode options

-- | Constructs GetDistributionConfigRequest from required parameters
newGetDistributionConfigRequest :: String -> GetDistributionConfigRequest
newGetDistributionConfigRequest _Id = GetDistributionConfigRequest { "Id": _Id }

-- | Constructs GetDistributionConfigRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetDistributionConfigRequest' :: String -> ( { "Id" :: (String) } -> {"Id" :: (String) } ) -> GetDistributionConfigRequest
newGetDistributionConfigRequest' _Id customize = (GetDistributionConfigRequest <<< customize) { "Id": _Id }



-- | <p>The returned result of the corresponding request.</p>
newtype GetDistributionConfigResult = GetDistributionConfigResult 
  { "DistributionConfig" :: Maybe (DistributionConfig)
  , "ETag" :: Maybe (String)
  }
derive instance newtypeGetDistributionConfigResult :: Newtype GetDistributionConfigResult _
derive instance repGenericGetDistributionConfigResult :: Generic GetDistributionConfigResult _
instance showGetDistributionConfigResult :: Show GetDistributionConfigResult where show = genericShow
instance decodeGetDistributionConfigResult :: Decode GetDistributionConfigResult where decode = genericDecode options
instance encodeGetDistributionConfigResult :: Encode GetDistributionConfigResult where encode = genericEncode options

-- | Constructs GetDistributionConfigResult from required parameters
newGetDistributionConfigResult :: GetDistributionConfigResult
newGetDistributionConfigResult  = GetDistributionConfigResult { "DistributionConfig": Nothing, "ETag": Nothing }

-- | Constructs GetDistributionConfigResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetDistributionConfigResult' :: ( { "DistributionConfig" :: Maybe (DistributionConfig) , "ETag" :: Maybe (String) } -> {"DistributionConfig" :: Maybe (DistributionConfig) , "ETag" :: Maybe (String) } ) -> GetDistributionConfigResult
newGetDistributionConfigResult'  customize = (GetDistributionConfigResult <<< customize) { "DistributionConfig": Nothing, "ETag": Nothing }



-- | <p>The request to get a distribution's information.</p>
newtype GetDistributionRequest = GetDistributionRequest 
  { "Id" :: (String)
  }
derive instance newtypeGetDistributionRequest :: Newtype GetDistributionRequest _
derive instance repGenericGetDistributionRequest :: Generic GetDistributionRequest _
instance showGetDistributionRequest :: Show GetDistributionRequest where show = genericShow
instance decodeGetDistributionRequest :: Decode GetDistributionRequest where decode = genericDecode options
instance encodeGetDistributionRequest :: Encode GetDistributionRequest where encode = genericEncode options

-- | Constructs GetDistributionRequest from required parameters
newGetDistributionRequest :: String -> GetDistributionRequest
newGetDistributionRequest _Id = GetDistributionRequest { "Id": _Id }

-- | Constructs GetDistributionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetDistributionRequest' :: String -> ( { "Id" :: (String) } -> {"Id" :: (String) } ) -> GetDistributionRequest
newGetDistributionRequest' _Id customize = (GetDistributionRequest <<< customize) { "Id": _Id }



-- | <p>The returned result of the corresponding request.</p>
newtype GetDistributionResult = GetDistributionResult 
  { "Distribution" :: Maybe (Distribution)
  , "ETag" :: Maybe (String)
  }
derive instance newtypeGetDistributionResult :: Newtype GetDistributionResult _
derive instance repGenericGetDistributionResult :: Generic GetDistributionResult _
instance showGetDistributionResult :: Show GetDistributionResult where show = genericShow
instance decodeGetDistributionResult :: Decode GetDistributionResult where decode = genericDecode options
instance encodeGetDistributionResult :: Encode GetDistributionResult where encode = genericEncode options

-- | Constructs GetDistributionResult from required parameters
newGetDistributionResult :: GetDistributionResult
newGetDistributionResult  = GetDistributionResult { "Distribution": Nothing, "ETag": Nothing }

-- | Constructs GetDistributionResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetDistributionResult' :: ( { "Distribution" :: Maybe (Distribution) , "ETag" :: Maybe (String) } -> {"Distribution" :: Maybe (Distribution) , "ETag" :: Maybe (String) } ) -> GetDistributionResult
newGetDistributionResult'  customize = (GetDistributionResult <<< customize) { "Distribution": Nothing, "ETag": Nothing }



-- | <p>The request to get an invalidation's information. </p>
newtype GetInvalidationRequest = GetInvalidationRequest 
  { "DistributionId" :: (String)
  , "Id" :: (String)
  }
derive instance newtypeGetInvalidationRequest :: Newtype GetInvalidationRequest _
derive instance repGenericGetInvalidationRequest :: Generic GetInvalidationRequest _
instance showGetInvalidationRequest :: Show GetInvalidationRequest where show = genericShow
instance decodeGetInvalidationRequest :: Decode GetInvalidationRequest where decode = genericDecode options
instance encodeGetInvalidationRequest :: Encode GetInvalidationRequest where encode = genericEncode options

-- | Constructs GetInvalidationRequest from required parameters
newGetInvalidationRequest :: String -> String -> GetInvalidationRequest
newGetInvalidationRequest _DistributionId _Id = GetInvalidationRequest { "DistributionId": _DistributionId, "Id": _Id }

-- | Constructs GetInvalidationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetInvalidationRequest' :: String -> String -> ( { "DistributionId" :: (String) , "Id" :: (String) } -> {"DistributionId" :: (String) , "Id" :: (String) } ) -> GetInvalidationRequest
newGetInvalidationRequest' _DistributionId _Id customize = (GetInvalidationRequest <<< customize) { "DistributionId": _DistributionId, "Id": _Id }



-- | <p>The returned result of the corresponding request.</p>
newtype GetInvalidationResult = GetInvalidationResult 
  { "Invalidation" :: Maybe (Invalidation)
  }
derive instance newtypeGetInvalidationResult :: Newtype GetInvalidationResult _
derive instance repGenericGetInvalidationResult :: Generic GetInvalidationResult _
instance showGetInvalidationResult :: Show GetInvalidationResult where show = genericShow
instance decodeGetInvalidationResult :: Decode GetInvalidationResult where decode = genericDecode options
instance encodeGetInvalidationResult :: Encode GetInvalidationResult where encode = genericEncode options

-- | Constructs GetInvalidationResult from required parameters
newGetInvalidationResult :: GetInvalidationResult
newGetInvalidationResult  = GetInvalidationResult { "Invalidation": Nothing }

-- | Constructs GetInvalidationResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetInvalidationResult' :: ( { "Invalidation" :: Maybe (Invalidation) } -> {"Invalidation" :: Maybe (Invalidation) } ) -> GetInvalidationResult
newGetInvalidationResult'  customize = (GetInvalidationResult <<< customize) { "Invalidation": Nothing }



-- | <p>To request to get a streaming distribution configuration.</p>
newtype GetStreamingDistributionConfigRequest = GetStreamingDistributionConfigRequest 
  { "Id" :: (String)
  }
derive instance newtypeGetStreamingDistributionConfigRequest :: Newtype GetStreamingDistributionConfigRequest _
derive instance repGenericGetStreamingDistributionConfigRequest :: Generic GetStreamingDistributionConfigRequest _
instance showGetStreamingDistributionConfigRequest :: Show GetStreamingDistributionConfigRequest where show = genericShow
instance decodeGetStreamingDistributionConfigRequest :: Decode GetStreamingDistributionConfigRequest where decode = genericDecode options
instance encodeGetStreamingDistributionConfigRequest :: Encode GetStreamingDistributionConfigRequest where encode = genericEncode options

-- | Constructs GetStreamingDistributionConfigRequest from required parameters
newGetStreamingDistributionConfigRequest :: String -> GetStreamingDistributionConfigRequest
newGetStreamingDistributionConfigRequest _Id = GetStreamingDistributionConfigRequest { "Id": _Id }

-- | Constructs GetStreamingDistributionConfigRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetStreamingDistributionConfigRequest' :: String -> ( { "Id" :: (String) } -> {"Id" :: (String) } ) -> GetStreamingDistributionConfigRequest
newGetStreamingDistributionConfigRequest' _Id customize = (GetStreamingDistributionConfigRequest <<< customize) { "Id": _Id }



-- | <p>The returned result of the corresponding request.</p>
newtype GetStreamingDistributionConfigResult = GetStreamingDistributionConfigResult 
  { "StreamingDistributionConfig" :: Maybe (StreamingDistributionConfig)
  , "ETag" :: Maybe (String)
  }
derive instance newtypeGetStreamingDistributionConfigResult :: Newtype GetStreamingDistributionConfigResult _
derive instance repGenericGetStreamingDistributionConfigResult :: Generic GetStreamingDistributionConfigResult _
instance showGetStreamingDistributionConfigResult :: Show GetStreamingDistributionConfigResult where show = genericShow
instance decodeGetStreamingDistributionConfigResult :: Decode GetStreamingDistributionConfigResult where decode = genericDecode options
instance encodeGetStreamingDistributionConfigResult :: Encode GetStreamingDistributionConfigResult where encode = genericEncode options

-- | Constructs GetStreamingDistributionConfigResult from required parameters
newGetStreamingDistributionConfigResult :: GetStreamingDistributionConfigResult
newGetStreamingDistributionConfigResult  = GetStreamingDistributionConfigResult { "ETag": Nothing, "StreamingDistributionConfig": Nothing }

-- | Constructs GetStreamingDistributionConfigResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetStreamingDistributionConfigResult' :: ( { "StreamingDistributionConfig" :: Maybe (StreamingDistributionConfig) , "ETag" :: Maybe (String) } -> {"StreamingDistributionConfig" :: Maybe (StreamingDistributionConfig) , "ETag" :: Maybe (String) } ) -> GetStreamingDistributionConfigResult
newGetStreamingDistributionConfigResult'  customize = (GetStreamingDistributionConfigResult <<< customize) { "ETag": Nothing, "StreamingDistributionConfig": Nothing }



-- | <p>The request to get a streaming distribution's information.</p>
newtype GetStreamingDistributionRequest = GetStreamingDistributionRequest 
  { "Id" :: (String)
  }
derive instance newtypeGetStreamingDistributionRequest :: Newtype GetStreamingDistributionRequest _
derive instance repGenericGetStreamingDistributionRequest :: Generic GetStreamingDistributionRequest _
instance showGetStreamingDistributionRequest :: Show GetStreamingDistributionRequest where show = genericShow
instance decodeGetStreamingDistributionRequest :: Decode GetStreamingDistributionRequest where decode = genericDecode options
instance encodeGetStreamingDistributionRequest :: Encode GetStreamingDistributionRequest where encode = genericEncode options

-- | Constructs GetStreamingDistributionRequest from required parameters
newGetStreamingDistributionRequest :: String -> GetStreamingDistributionRequest
newGetStreamingDistributionRequest _Id = GetStreamingDistributionRequest { "Id": _Id }

-- | Constructs GetStreamingDistributionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetStreamingDistributionRequest' :: String -> ( { "Id" :: (String) } -> {"Id" :: (String) } ) -> GetStreamingDistributionRequest
newGetStreamingDistributionRequest' _Id customize = (GetStreamingDistributionRequest <<< customize) { "Id": _Id }



-- | <p>The returned result of the corresponding request.</p>
newtype GetStreamingDistributionResult = GetStreamingDistributionResult 
  { "StreamingDistribution" :: Maybe (StreamingDistribution)
  , "ETag" :: Maybe (String)
  }
derive instance newtypeGetStreamingDistributionResult :: Newtype GetStreamingDistributionResult _
derive instance repGenericGetStreamingDistributionResult :: Generic GetStreamingDistributionResult _
instance showGetStreamingDistributionResult :: Show GetStreamingDistributionResult where show = genericShow
instance decodeGetStreamingDistributionResult :: Decode GetStreamingDistributionResult where decode = genericDecode options
instance encodeGetStreamingDistributionResult :: Encode GetStreamingDistributionResult where encode = genericEncode options

-- | Constructs GetStreamingDistributionResult from required parameters
newGetStreamingDistributionResult :: GetStreamingDistributionResult
newGetStreamingDistributionResult  = GetStreamingDistributionResult { "ETag": Nothing, "StreamingDistribution": Nothing }

-- | Constructs GetStreamingDistributionResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetStreamingDistributionResult' :: ( { "StreamingDistribution" :: Maybe (StreamingDistribution) , "ETag" :: Maybe (String) } -> {"StreamingDistribution" :: Maybe (StreamingDistribution) , "ETag" :: Maybe (String) } ) -> GetStreamingDistributionResult
newGetStreamingDistributionResult'  customize = (GetStreamingDistributionResult <<< customize) { "ETag": Nothing, "StreamingDistribution": Nothing }



newtype HeaderList = HeaderList (Array String)
derive instance newtypeHeaderList :: Newtype HeaderList _
derive instance repGenericHeaderList :: Generic HeaderList _
instance showHeaderList :: Show HeaderList where show = genericShow
instance decodeHeaderList :: Decode HeaderList where decode = genericDecode options
instance encodeHeaderList :: Encode HeaderList where encode = genericEncode options



-- | <p>A complex type that specifies the headers that you want CloudFront to forward to the origin for this cache behavior.</p> <p>For the headers that you specify, CloudFront also caches separate versions of a specified object based on the header values in viewer requests. For example, suppose viewer requests for <code>logo.jpg</code> contain a custom <code>Product</code> header that has a value of either <code>Acme</code> or <code>Apex</code>, and you configure CloudFront to cache your content based on values in the <code>Product</code> header. CloudFront forwards the <code>Product</code> header to the origin and caches the response from the origin once for each header value. For more information about caching based on header values, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/header-caching.html">How CloudFront Forwards and Caches Headers</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
newtype Headers = Headers 
  { "Quantity" :: (Int)
  , "Items" :: Maybe (HeaderList)
  }
derive instance newtypeHeaders :: Newtype Headers _
derive instance repGenericHeaders :: Generic Headers _
instance showHeaders :: Show Headers where show = genericShow
instance decodeHeaders :: Decode Headers where decode = genericDecode options
instance encodeHeaders :: Encode Headers where encode = genericEncode options

-- | Constructs Headers from required parameters
newHeaders :: Int -> Headers
newHeaders _Quantity = Headers { "Quantity": _Quantity, "Items": Nothing }

-- | Constructs Headers's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHeaders' :: Int -> ( { "Quantity" :: (Int) , "Items" :: Maybe (HeaderList) } -> {"Quantity" :: (Int) , "Items" :: Maybe (HeaderList) } ) -> Headers
newHeaders' _Quantity customize = (Headers <<< customize) { "Quantity": _Quantity, "Items": Nothing }



newtype HttpVersion = HttpVersion String
derive instance newtypeHttpVersion :: Newtype HttpVersion _
derive instance repGenericHttpVersion :: Generic HttpVersion _
instance showHttpVersion :: Show HttpVersion where show = genericShow
instance decodeHttpVersion :: Decode HttpVersion where decode = genericDecode options
instance encodeHttpVersion :: Encode HttpVersion where encode = genericEncode options



-- | <p>Origin and <code>CallerReference</code> cannot be updated. </p>
newtype IllegalUpdate = IllegalUpdate 
  { "Message" :: Maybe (String)
  }
derive instance newtypeIllegalUpdate :: Newtype IllegalUpdate _
derive instance repGenericIllegalUpdate :: Generic IllegalUpdate _
instance showIllegalUpdate :: Show IllegalUpdate where show = genericShow
instance decodeIllegalUpdate :: Decode IllegalUpdate where decode = genericDecode options
instance encodeIllegalUpdate :: Encode IllegalUpdate where encode = genericEncode options

-- | Constructs IllegalUpdate from required parameters
newIllegalUpdate :: IllegalUpdate
newIllegalUpdate  = IllegalUpdate { "Message": Nothing }

-- | Constructs IllegalUpdate's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newIllegalUpdate' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> IllegalUpdate
newIllegalUpdate'  customize = (IllegalUpdate <<< customize) { "Message": Nothing }



-- | <p>The value of <code>Quantity</code> and the size of <code>Items</code> do not match.</p>
newtype InconsistentQuantities = InconsistentQuantities 
  { "Message" :: Maybe (String)
  }
derive instance newtypeInconsistentQuantities :: Newtype InconsistentQuantities _
derive instance repGenericInconsistentQuantities :: Generic InconsistentQuantities _
instance showInconsistentQuantities :: Show InconsistentQuantities where show = genericShow
instance decodeInconsistentQuantities :: Decode InconsistentQuantities where decode = genericDecode options
instance encodeInconsistentQuantities :: Encode InconsistentQuantities where encode = genericEncode options

-- | Constructs InconsistentQuantities from required parameters
newInconsistentQuantities :: InconsistentQuantities
newInconsistentQuantities  = InconsistentQuantities { "Message": Nothing }

-- | Constructs InconsistentQuantities's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInconsistentQuantities' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> InconsistentQuantities
newInconsistentQuantities'  customize = (InconsistentQuantities <<< customize) { "Message": Nothing }



-- | <p>The argument is invalid.</p>
newtype InvalidArgument = InvalidArgument 
  { "Message" :: Maybe (String)
  }
derive instance newtypeInvalidArgument :: Newtype InvalidArgument _
derive instance repGenericInvalidArgument :: Generic InvalidArgument _
instance showInvalidArgument :: Show InvalidArgument where show = genericShow
instance decodeInvalidArgument :: Decode InvalidArgument where decode = genericDecode options
instance encodeInvalidArgument :: Encode InvalidArgument where encode = genericEncode options

-- | Constructs InvalidArgument from required parameters
newInvalidArgument :: InvalidArgument
newInvalidArgument  = InvalidArgument { "Message": Nothing }

-- | Constructs InvalidArgument's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidArgument' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> InvalidArgument
newInvalidArgument'  customize = (InvalidArgument <<< customize) { "Message": Nothing }



-- | <p>The default root object file name is too big or contains an invalid character.</p>
newtype InvalidDefaultRootObject = InvalidDefaultRootObject 
  { "Message" :: Maybe (String)
  }
derive instance newtypeInvalidDefaultRootObject :: Newtype InvalidDefaultRootObject _
derive instance repGenericInvalidDefaultRootObject :: Generic InvalidDefaultRootObject _
instance showInvalidDefaultRootObject :: Show InvalidDefaultRootObject where show = genericShow
instance decodeInvalidDefaultRootObject :: Decode InvalidDefaultRootObject where decode = genericDecode options
instance encodeInvalidDefaultRootObject :: Encode InvalidDefaultRootObject where encode = genericEncode options

-- | Constructs InvalidDefaultRootObject from required parameters
newInvalidDefaultRootObject :: InvalidDefaultRootObject
newInvalidDefaultRootObject  = InvalidDefaultRootObject { "Message": Nothing }

-- | Constructs InvalidDefaultRootObject's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidDefaultRootObject' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> InvalidDefaultRootObject
newInvalidDefaultRootObject'  customize = (InvalidDefaultRootObject <<< customize) { "Message": Nothing }



newtype InvalidErrorCode = InvalidErrorCode 
  { "Message" :: Maybe (String)
  }
derive instance newtypeInvalidErrorCode :: Newtype InvalidErrorCode _
derive instance repGenericInvalidErrorCode :: Generic InvalidErrorCode _
instance showInvalidErrorCode :: Show InvalidErrorCode where show = genericShow
instance decodeInvalidErrorCode :: Decode InvalidErrorCode where decode = genericDecode options
instance encodeInvalidErrorCode :: Encode InvalidErrorCode where encode = genericEncode options

-- | Constructs InvalidErrorCode from required parameters
newInvalidErrorCode :: InvalidErrorCode
newInvalidErrorCode  = InvalidErrorCode { "Message": Nothing }

-- | Constructs InvalidErrorCode's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidErrorCode' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> InvalidErrorCode
newInvalidErrorCode'  customize = (InvalidErrorCode <<< customize) { "Message": Nothing }



-- | <p>Your request contains forward cookies option which doesn't match with the expectation for the <code>whitelisted</code> list of cookie names. Either list of cookie names has been specified when not allowed or list of cookie names is missing when expected.</p>
newtype InvalidForwardCookies = InvalidForwardCookies 
  { "Message" :: Maybe (String)
  }
derive instance newtypeInvalidForwardCookies :: Newtype InvalidForwardCookies _
derive instance repGenericInvalidForwardCookies :: Generic InvalidForwardCookies _
instance showInvalidForwardCookies :: Show InvalidForwardCookies where show = genericShow
instance decodeInvalidForwardCookies :: Decode InvalidForwardCookies where decode = genericDecode options
instance encodeInvalidForwardCookies :: Encode InvalidForwardCookies where encode = genericEncode options

-- | Constructs InvalidForwardCookies from required parameters
newInvalidForwardCookies :: InvalidForwardCookies
newInvalidForwardCookies  = InvalidForwardCookies { "Message": Nothing }

-- | Constructs InvalidForwardCookies's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidForwardCookies' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> InvalidForwardCookies
newInvalidForwardCookies'  customize = (InvalidForwardCookies <<< customize) { "Message": Nothing }



newtype InvalidGeoRestrictionParameter = InvalidGeoRestrictionParameter 
  { "Message" :: Maybe (String)
  }
derive instance newtypeInvalidGeoRestrictionParameter :: Newtype InvalidGeoRestrictionParameter _
derive instance repGenericInvalidGeoRestrictionParameter :: Generic InvalidGeoRestrictionParameter _
instance showInvalidGeoRestrictionParameter :: Show InvalidGeoRestrictionParameter where show = genericShow
instance decodeInvalidGeoRestrictionParameter :: Decode InvalidGeoRestrictionParameter where decode = genericDecode options
instance encodeInvalidGeoRestrictionParameter :: Encode InvalidGeoRestrictionParameter where encode = genericEncode options

-- | Constructs InvalidGeoRestrictionParameter from required parameters
newInvalidGeoRestrictionParameter :: InvalidGeoRestrictionParameter
newInvalidGeoRestrictionParameter  = InvalidGeoRestrictionParameter { "Message": Nothing }

-- | Constructs InvalidGeoRestrictionParameter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidGeoRestrictionParameter' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> InvalidGeoRestrictionParameter
newInvalidGeoRestrictionParameter'  customize = (InvalidGeoRestrictionParameter <<< customize) { "Message": Nothing }



newtype InvalidHeadersForS3Origin = InvalidHeadersForS3Origin 
  { "Message" :: Maybe (String)
  }
derive instance newtypeInvalidHeadersForS3Origin :: Newtype InvalidHeadersForS3Origin _
derive instance repGenericInvalidHeadersForS3Origin :: Generic InvalidHeadersForS3Origin _
instance showInvalidHeadersForS3Origin :: Show InvalidHeadersForS3Origin where show = genericShow
instance decodeInvalidHeadersForS3Origin :: Decode InvalidHeadersForS3Origin where decode = genericDecode options
instance encodeInvalidHeadersForS3Origin :: Encode InvalidHeadersForS3Origin where encode = genericEncode options

-- | Constructs InvalidHeadersForS3Origin from required parameters
newInvalidHeadersForS3Origin :: InvalidHeadersForS3Origin
newInvalidHeadersForS3Origin  = InvalidHeadersForS3Origin { "Message": Nothing }

-- | Constructs InvalidHeadersForS3Origin's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidHeadersForS3Origin' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> InvalidHeadersForS3Origin
newInvalidHeadersForS3Origin'  customize = (InvalidHeadersForS3Origin <<< customize) { "Message": Nothing }



-- | <p>The <code>If-Match</code> version is missing or not valid for the distribution.</p>
newtype InvalidIfMatchVersion = InvalidIfMatchVersion 
  { "Message" :: Maybe (String)
  }
derive instance newtypeInvalidIfMatchVersion :: Newtype InvalidIfMatchVersion _
derive instance repGenericInvalidIfMatchVersion :: Generic InvalidIfMatchVersion _
instance showInvalidIfMatchVersion :: Show InvalidIfMatchVersion where show = genericShow
instance decodeInvalidIfMatchVersion :: Decode InvalidIfMatchVersion where decode = genericDecode options
instance encodeInvalidIfMatchVersion :: Encode InvalidIfMatchVersion where encode = genericEncode options

-- | Constructs InvalidIfMatchVersion from required parameters
newInvalidIfMatchVersion :: InvalidIfMatchVersion
newInvalidIfMatchVersion  = InvalidIfMatchVersion { "Message": Nothing }

-- | Constructs InvalidIfMatchVersion's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidIfMatchVersion' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> InvalidIfMatchVersion
newInvalidIfMatchVersion'  customize = (InvalidIfMatchVersion <<< customize) { "Message": Nothing }



-- | <p>The specified Lambda function association is invalid.</p>
newtype InvalidLambdaFunctionAssociation = InvalidLambdaFunctionAssociation 
  { "Message" :: Maybe (String)
  }
derive instance newtypeInvalidLambdaFunctionAssociation :: Newtype InvalidLambdaFunctionAssociation _
derive instance repGenericInvalidLambdaFunctionAssociation :: Generic InvalidLambdaFunctionAssociation _
instance showInvalidLambdaFunctionAssociation :: Show InvalidLambdaFunctionAssociation where show = genericShow
instance decodeInvalidLambdaFunctionAssociation :: Decode InvalidLambdaFunctionAssociation where decode = genericDecode options
instance encodeInvalidLambdaFunctionAssociation :: Encode InvalidLambdaFunctionAssociation where encode = genericEncode options

-- | Constructs InvalidLambdaFunctionAssociation from required parameters
newInvalidLambdaFunctionAssociation :: InvalidLambdaFunctionAssociation
newInvalidLambdaFunctionAssociation  = InvalidLambdaFunctionAssociation { "Message": Nothing }

-- | Constructs InvalidLambdaFunctionAssociation's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidLambdaFunctionAssociation' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> InvalidLambdaFunctionAssociation
newInvalidLambdaFunctionAssociation'  customize = (InvalidLambdaFunctionAssociation <<< customize) { "Message": Nothing }



newtype InvalidLocationCode = InvalidLocationCode 
  { "Message" :: Maybe (String)
  }
derive instance newtypeInvalidLocationCode :: Newtype InvalidLocationCode _
derive instance repGenericInvalidLocationCode :: Generic InvalidLocationCode _
instance showInvalidLocationCode :: Show InvalidLocationCode where show = genericShow
instance decodeInvalidLocationCode :: Decode InvalidLocationCode where decode = genericDecode options
instance encodeInvalidLocationCode :: Encode InvalidLocationCode where encode = genericEncode options

-- | Constructs InvalidLocationCode from required parameters
newInvalidLocationCode :: InvalidLocationCode
newInvalidLocationCode  = InvalidLocationCode { "Message": Nothing }

-- | Constructs InvalidLocationCode's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidLocationCode' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> InvalidLocationCode
newInvalidLocationCode'  customize = (InvalidLocationCode <<< customize) { "Message": Nothing }



newtype InvalidMinimumProtocolVersion = InvalidMinimumProtocolVersion 
  { "Message" :: Maybe (String)
  }
derive instance newtypeInvalidMinimumProtocolVersion :: Newtype InvalidMinimumProtocolVersion _
derive instance repGenericInvalidMinimumProtocolVersion :: Generic InvalidMinimumProtocolVersion _
instance showInvalidMinimumProtocolVersion :: Show InvalidMinimumProtocolVersion where show = genericShow
instance decodeInvalidMinimumProtocolVersion :: Decode InvalidMinimumProtocolVersion where decode = genericDecode options
instance encodeInvalidMinimumProtocolVersion :: Encode InvalidMinimumProtocolVersion where encode = genericEncode options

-- | Constructs InvalidMinimumProtocolVersion from required parameters
newInvalidMinimumProtocolVersion :: InvalidMinimumProtocolVersion
newInvalidMinimumProtocolVersion  = InvalidMinimumProtocolVersion { "Message": Nothing }

-- | Constructs InvalidMinimumProtocolVersion's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidMinimumProtocolVersion' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> InvalidMinimumProtocolVersion
newInvalidMinimumProtocolVersion'  customize = (InvalidMinimumProtocolVersion <<< customize) { "Message": Nothing }



-- | <p>The Amazon S3 origin server specified does not refer to a valid Amazon S3 bucket.</p>
newtype InvalidOrigin = InvalidOrigin 
  { "Message" :: Maybe (String)
  }
derive instance newtypeInvalidOrigin :: Newtype InvalidOrigin _
derive instance repGenericInvalidOrigin :: Generic InvalidOrigin _
instance showInvalidOrigin :: Show InvalidOrigin where show = genericShow
instance decodeInvalidOrigin :: Decode InvalidOrigin where decode = genericDecode options
instance encodeInvalidOrigin :: Encode InvalidOrigin where encode = genericEncode options

-- | Constructs InvalidOrigin from required parameters
newInvalidOrigin :: InvalidOrigin
newInvalidOrigin  = InvalidOrigin { "Message": Nothing }

-- | Constructs InvalidOrigin's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidOrigin' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> InvalidOrigin
newInvalidOrigin'  customize = (InvalidOrigin <<< customize) { "Message": Nothing }



-- | <p>The origin access identity is not valid or doesn't exist.</p>
newtype InvalidOriginAccessIdentity = InvalidOriginAccessIdentity 
  { "Message" :: Maybe (String)
  }
derive instance newtypeInvalidOriginAccessIdentity :: Newtype InvalidOriginAccessIdentity _
derive instance repGenericInvalidOriginAccessIdentity :: Generic InvalidOriginAccessIdentity _
instance showInvalidOriginAccessIdentity :: Show InvalidOriginAccessIdentity where show = genericShow
instance decodeInvalidOriginAccessIdentity :: Decode InvalidOriginAccessIdentity where decode = genericDecode options
instance encodeInvalidOriginAccessIdentity :: Encode InvalidOriginAccessIdentity where encode = genericEncode options

-- | Constructs InvalidOriginAccessIdentity from required parameters
newInvalidOriginAccessIdentity :: InvalidOriginAccessIdentity
newInvalidOriginAccessIdentity  = InvalidOriginAccessIdentity { "Message": Nothing }

-- | Constructs InvalidOriginAccessIdentity's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidOriginAccessIdentity' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> InvalidOriginAccessIdentity
newInvalidOriginAccessIdentity'  customize = (InvalidOriginAccessIdentity <<< customize) { "Message": Nothing }



-- | <p>You cannot specify SSLv3 as the minimum protocol version if you only want to support only clients that support Server Name Indication (SNI).</p>
newtype InvalidProtocolSettings = InvalidProtocolSettings 
  { "Message" :: Maybe (String)
  }
derive instance newtypeInvalidProtocolSettings :: Newtype InvalidProtocolSettings _
derive instance repGenericInvalidProtocolSettings :: Generic InvalidProtocolSettings _
instance showInvalidProtocolSettings :: Show InvalidProtocolSettings where show = genericShow
instance decodeInvalidProtocolSettings :: Decode InvalidProtocolSettings where decode = genericDecode options
instance encodeInvalidProtocolSettings :: Encode InvalidProtocolSettings where encode = genericEncode options

-- | Constructs InvalidProtocolSettings from required parameters
newInvalidProtocolSettings :: InvalidProtocolSettings
newInvalidProtocolSettings  = InvalidProtocolSettings { "Message": Nothing }

-- | Constructs InvalidProtocolSettings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidProtocolSettings' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> InvalidProtocolSettings
newInvalidProtocolSettings'  customize = (InvalidProtocolSettings <<< customize) { "Message": Nothing }



newtype InvalidQueryStringParameters = InvalidQueryStringParameters 
  { "Message" :: Maybe (String)
  }
derive instance newtypeInvalidQueryStringParameters :: Newtype InvalidQueryStringParameters _
derive instance repGenericInvalidQueryStringParameters :: Generic InvalidQueryStringParameters _
instance showInvalidQueryStringParameters :: Show InvalidQueryStringParameters where show = genericShow
instance decodeInvalidQueryStringParameters :: Decode InvalidQueryStringParameters where decode = genericDecode options
instance encodeInvalidQueryStringParameters :: Encode InvalidQueryStringParameters where encode = genericEncode options

-- | Constructs InvalidQueryStringParameters from required parameters
newInvalidQueryStringParameters :: InvalidQueryStringParameters
newInvalidQueryStringParameters  = InvalidQueryStringParameters { "Message": Nothing }

-- | Constructs InvalidQueryStringParameters's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidQueryStringParameters' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> InvalidQueryStringParameters
newInvalidQueryStringParameters'  customize = (InvalidQueryStringParameters <<< customize) { "Message": Nothing }



-- | <p>The relative path is too big, is not URL-encoded, or does not begin with a slash (/).</p>
newtype InvalidRelativePath = InvalidRelativePath 
  { "Message" :: Maybe (String)
  }
derive instance newtypeInvalidRelativePath :: Newtype InvalidRelativePath _
derive instance repGenericInvalidRelativePath :: Generic InvalidRelativePath _
instance showInvalidRelativePath :: Show InvalidRelativePath where show = genericShow
instance decodeInvalidRelativePath :: Decode InvalidRelativePath where decode = genericDecode options
instance encodeInvalidRelativePath :: Encode InvalidRelativePath where encode = genericEncode options

-- | Constructs InvalidRelativePath from required parameters
newInvalidRelativePath :: InvalidRelativePath
newInvalidRelativePath  = InvalidRelativePath { "Message": Nothing }

-- | Constructs InvalidRelativePath's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidRelativePath' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> InvalidRelativePath
newInvalidRelativePath'  customize = (InvalidRelativePath <<< customize) { "Message": Nothing }



-- | <p>This operation requires the HTTPS protocol. Ensure that you specify the HTTPS protocol in your request, or omit the <code>RequiredProtocols</code> element from your distribution configuration.</p>
newtype InvalidRequiredProtocol = InvalidRequiredProtocol 
  { "Message" :: Maybe (String)
  }
derive instance newtypeInvalidRequiredProtocol :: Newtype InvalidRequiredProtocol _
derive instance repGenericInvalidRequiredProtocol :: Generic InvalidRequiredProtocol _
instance showInvalidRequiredProtocol :: Show InvalidRequiredProtocol where show = genericShow
instance decodeInvalidRequiredProtocol :: Decode InvalidRequiredProtocol where decode = genericDecode options
instance encodeInvalidRequiredProtocol :: Encode InvalidRequiredProtocol where encode = genericEncode options

-- | Constructs InvalidRequiredProtocol from required parameters
newInvalidRequiredProtocol :: InvalidRequiredProtocol
newInvalidRequiredProtocol  = InvalidRequiredProtocol { "Message": Nothing }

-- | Constructs InvalidRequiredProtocol's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidRequiredProtocol' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> InvalidRequiredProtocol
newInvalidRequiredProtocol'  customize = (InvalidRequiredProtocol <<< customize) { "Message": Nothing }



newtype InvalidResponseCode = InvalidResponseCode 
  { "Message" :: Maybe (String)
  }
derive instance newtypeInvalidResponseCode :: Newtype InvalidResponseCode _
derive instance repGenericInvalidResponseCode :: Generic InvalidResponseCode _
instance showInvalidResponseCode :: Show InvalidResponseCode where show = genericShow
instance decodeInvalidResponseCode :: Decode InvalidResponseCode where decode = genericDecode options
instance encodeInvalidResponseCode :: Encode InvalidResponseCode where encode = genericEncode options

-- | Constructs InvalidResponseCode from required parameters
newInvalidResponseCode :: InvalidResponseCode
newInvalidResponseCode  = InvalidResponseCode { "Message": Nothing }

-- | Constructs InvalidResponseCode's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidResponseCode' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> InvalidResponseCode
newInvalidResponseCode'  customize = (InvalidResponseCode <<< customize) { "Message": Nothing }



newtype InvalidTTLOrder = InvalidTTLOrder 
  { "Message" :: Maybe (String)
  }
derive instance newtypeInvalidTTLOrder :: Newtype InvalidTTLOrder _
derive instance repGenericInvalidTTLOrder :: Generic InvalidTTLOrder _
instance showInvalidTTLOrder :: Show InvalidTTLOrder where show = genericShow
instance decodeInvalidTTLOrder :: Decode InvalidTTLOrder where decode = genericDecode options
instance encodeInvalidTTLOrder :: Encode InvalidTTLOrder where encode = genericEncode options

-- | Constructs InvalidTTLOrder from required parameters
newInvalidTTLOrder :: InvalidTTLOrder
newInvalidTTLOrder  = InvalidTTLOrder { "Message": Nothing }

-- | Constructs InvalidTTLOrder's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidTTLOrder' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> InvalidTTLOrder
newInvalidTTLOrder'  customize = (InvalidTTLOrder <<< customize) { "Message": Nothing }



newtype InvalidTagging = InvalidTagging 
  { "Message" :: Maybe (String)
  }
derive instance newtypeInvalidTagging :: Newtype InvalidTagging _
derive instance repGenericInvalidTagging :: Generic InvalidTagging _
instance showInvalidTagging :: Show InvalidTagging where show = genericShow
instance decodeInvalidTagging :: Decode InvalidTagging where decode = genericDecode options
instance encodeInvalidTagging :: Encode InvalidTagging where encode = genericEncode options

-- | Constructs InvalidTagging from required parameters
newInvalidTagging :: InvalidTagging
newInvalidTagging  = InvalidTagging { "Message": Nothing }

-- | Constructs InvalidTagging's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidTagging' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> InvalidTagging
newInvalidTagging'  customize = (InvalidTagging <<< customize) { "Message": Nothing }



newtype InvalidViewerCertificate = InvalidViewerCertificate 
  { "Message" :: Maybe (String)
  }
derive instance newtypeInvalidViewerCertificate :: Newtype InvalidViewerCertificate _
derive instance repGenericInvalidViewerCertificate :: Generic InvalidViewerCertificate _
instance showInvalidViewerCertificate :: Show InvalidViewerCertificate where show = genericShow
instance decodeInvalidViewerCertificate :: Decode InvalidViewerCertificate where decode = genericDecode options
instance encodeInvalidViewerCertificate :: Encode InvalidViewerCertificate where encode = genericEncode options

-- | Constructs InvalidViewerCertificate from required parameters
newInvalidViewerCertificate :: InvalidViewerCertificate
newInvalidViewerCertificate  = InvalidViewerCertificate { "Message": Nothing }

-- | Constructs InvalidViewerCertificate's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidViewerCertificate' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> InvalidViewerCertificate
newInvalidViewerCertificate'  customize = (InvalidViewerCertificate <<< customize) { "Message": Nothing }



newtype InvalidWebACLId = InvalidWebACLId 
  { "Message" :: Maybe (String)
  }
derive instance newtypeInvalidWebACLId :: Newtype InvalidWebACLId _
derive instance repGenericInvalidWebACLId :: Generic InvalidWebACLId _
instance showInvalidWebACLId :: Show InvalidWebACLId where show = genericShow
instance decodeInvalidWebACLId :: Decode InvalidWebACLId where decode = genericDecode options
instance encodeInvalidWebACLId :: Encode InvalidWebACLId where encode = genericEncode options

-- | Constructs InvalidWebACLId from required parameters
newInvalidWebACLId :: InvalidWebACLId
newInvalidWebACLId  = InvalidWebACLId { "Message": Nothing }

-- | Constructs InvalidWebACLId's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidWebACLId' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> InvalidWebACLId
newInvalidWebACLId'  customize = (InvalidWebACLId <<< customize) { "Message": Nothing }



-- | <p>An invalidation. </p>
newtype Invalidation = Invalidation 
  { "Id" :: (String)
  , "Status" :: (String)
  , "CreateTime" :: (Types.Timestamp)
  , "InvalidationBatch" :: (InvalidationBatch)
  }
derive instance newtypeInvalidation :: Newtype Invalidation _
derive instance repGenericInvalidation :: Generic Invalidation _
instance showInvalidation :: Show Invalidation where show = genericShow
instance decodeInvalidation :: Decode Invalidation where decode = genericDecode options
instance encodeInvalidation :: Encode Invalidation where encode = genericEncode options

-- | Constructs Invalidation from required parameters
newInvalidation :: Types.Timestamp -> String -> InvalidationBatch -> String -> Invalidation
newInvalidation _CreateTime _Id _InvalidationBatch _Status = Invalidation { "CreateTime": _CreateTime, "Id": _Id, "InvalidationBatch": _InvalidationBatch, "Status": _Status }

-- | Constructs Invalidation's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidation' :: Types.Timestamp -> String -> InvalidationBatch -> String -> ( { "Id" :: (String) , "Status" :: (String) , "CreateTime" :: (Types.Timestamp) , "InvalidationBatch" :: (InvalidationBatch) } -> {"Id" :: (String) , "Status" :: (String) , "CreateTime" :: (Types.Timestamp) , "InvalidationBatch" :: (InvalidationBatch) } ) -> Invalidation
newInvalidation' _CreateTime _Id _InvalidationBatch _Status customize = (Invalidation <<< customize) { "CreateTime": _CreateTime, "Id": _Id, "InvalidationBatch": _InvalidationBatch, "Status": _Status }



-- | <p>An invalidation batch.</p>
newtype InvalidationBatch = InvalidationBatch 
  { "Paths" :: (Paths)
  , "CallerReference" :: (String)
  }
derive instance newtypeInvalidationBatch :: Newtype InvalidationBatch _
derive instance repGenericInvalidationBatch :: Generic InvalidationBatch _
instance showInvalidationBatch :: Show InvalidationBatch where show = genericShow
instance decodeInvalidationBatch :: Decode InvalidationBatch where decode = genericDecode options
instance encodeInvalidationBatch :: Encode InvalidationBatch where encode = genericEncode options

-- | Constructs InvalidationBatch from required parameters
newInvalidationBatch :: String -> Paths -> InvalidationBatch
newInvalidationBatch _CallerReference _Paths = InvalidationBatch { "CallerReference": _CallerReference, "Paths": _Paths }

-- | Constructs InvalidationBatch's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidationBatch' :: String -> Paths -> ( { "Paths" :: (Paths) , "CallerReference" :: (String) } -> {"Paths" :: (Paths) , "CallerReference" :: (String) } ) -> InvalidationBatch
newInvalidationBatch' _CallerReference _Paths customize = (InvalidationBatch <<< customize) { "CallerReference": _CallerReference, "Paths": _Paths }



-- | <p>The <code>InvalidationList</code> complex type describes the list of invalidation objects. For more information about invalidation, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html">Invalidating Objects (Web Distributions Only)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
newtype InvalidationList = InvalidationList 
  { "Marker" :: (String)
  , "NextMarker" :: Maybe (String)
  , "MaxItems" :: (Int)
  , "IsTruncated" :: (Boolean)
  , "Quantity" :: (Int)
  , "Items" :: Maybe (InvalidationSummaryList)
  }
derive instance newtypeInvalidationList :: Newtype InvalidationList _
derive instance repGenericInvalidationList :: Generic InvalidationList _
instance showInvalidationList :: Show InvalidationList where show = genericShow
instance decodeInvalidationList :: Decode InvalidationList where decode = genericDecode options
instance encodeInvalidationList :: Encode InvalidationList where encode = genericEncode options

-- | Constructs InvalidationList from required parameters
newInvalidationList :: Boolean -> String -> Int -> Int -> InvalidationList
newInvalidationList _IsTruncated _Marker _MaxItems _Quantity = InvalidationList { "IsTruncated": _IsTruncated, "Marker": _Marker, "MaxItems": _MaxItems, "Quantity": _Quantity, "Items": Nothing, "NextMarker": Nothing }

-- | Constructs InvalidationList's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidationList' :: Boolean -> String -> Int -> Int -> ( { "Marker" :: (String) , "NextMarker" :: Maybe (String) , "MaxItems" :: (Int) , "IsTruncated" :: (Boolean) , "Quantity" :: (Int) , "Items" :: Maybe (InvalidationSummaryList) } -> {"Marker" :: (String) , "NextMarker" :: Maybe (String) , "MaxItems" :: (Int) , "IsTruncated" :: (Boolean) , "Quantity" :: (Int) , "Items" :: Maybe (InvalidationSummaryList) } ) -> InvalidationList
newInvalidationList' _IsTruncated _Marker _MaxItems _Quantity customize = (InvalidationList <<< customize) { "IsTruncated": _IsTruncated, "Marker": _Marker, "MaxItems": _MaxItems, "Quantity": _Quantity, "Items": Nothing, "NextMarker": Nothing }



-- | <p>A summary of an invalidation request.</p>
newtype InvalidationSummary = InvalidationSummary 
  { "Id" :: (String)
  , "CreateTime" :: (Types.Timestamp)
  , "Status" :: (String)
  }
derive instance newtypeInvalidationSummary :: Newtype InvalidationSummary _
derive instance repGenericInvalidationSummary :: Generic InvalidationSummary _
instance showInvalidationSummary :: Show InvalidationSummary where show = genericShow
instance decodeInvalidationSummary :: Decode InvalidationSummary where decode = genericDecode options
instance encodeInvalidationSummary :: Encode InvalidationSummary where encode = genericEncode options

-- | Constructs InvalidationSummary from required parameters
newInvalidationSummary :: Types.Timestamp -> String -> String -> InvalidationSummary
newInvalidationSummary _CreateTime _Id _Status = InvalidationSummary { "CreateTime": _CreateTime, "Id": _Id, "Status": _Status }

-- | Constructs InvalidationSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidationSummary' :: Types.Timestamp -> String -> String -> ( { "Id" :: (String) , "CreateTime" :: (Types.Timestamp) , "Status" :: (String) } -> {"Id" :: (String) , "CreateTime" :: (Types.Timestamp) , "Status" :: (String) } ) -> InvalidationSummary
newInvalidationSummary' _CreateTime _Id _Status customize = (InvalidationSummary <<< customize) { "CreateTime": _CreateTime, "Id": _Id, "Status": _Status }



newtype InvalidationSummaryList = InvalidationSummaryList (Array InvalidationSummary)
derive instance newtypeInvalidationSummaryList :: Newtype InvalidationSummaryList _
derive instance repGenericInvalidationSummaryList :: Generic InvalidationSummaryList _
instance showInvalidationSummaryList :: Show InvalidationSummaryList where show = genericShow
instance decodeInvalidationSummaryList :: Decode InvalidationSummaryList where decode = genericDecode options
instance encodeInvalidationSummaryList :: Encode InvalidationSummaryList where encode = genericEncode options



newtype ItemSelection = ItemSelection String
derive instance newtypeItemSelection :: Newtype ItemSelection _
derive instance repGenericItemSelection :: Generic ItemSelection _
instance showItemSelection :: Show ItemSelection where show = genericShow
instance decodeItemSelection :: Decode ItemSelection where decode = genericDecode options
instance encodeItemSelection :: Encode ItemSelection where encode = genericEncode options



newtype KeyPairIdList = KeyPairIdList (Array String)
derive instance newtypeKeyPairIdList :: Newtype KeyPairIdList _
derive instance repGenericKeyPairIdList :: Generic KeyPairIdList _
instance showKeyPairIdList :: Show KeyPairIdList where show = genericShow
instance decodeKeyPairIdList :: Decode KeyPairIdList where decode = genericDecode options
instance encodeKeyPairIdList :: Encode KeyPairIdList where encode = genericEncode options



-- | <p>A complex type that lists the active CloudFront key pairs, if any, that are associated with <code>AwsAccountNumber</code>. </p> <p>For more information, see <a>ActiveTrustedSigners</a>.</p>
newtype KeyPairIds = KeyPairIds 
  { "Quantity" :: (Int)
  , "Items" :: Maybe (KeyPairIdList)
  }
derive instance newtypeKeyPairIds :: Newtype KeyPairIds _
derive instance repGenericKeyPairIds :: Generic KeyPairIds _
instance showKeyPairIds :: Show KeyPairIds where show = genericShow
instance decodeKeyPairIds :: Decode KeyPairIds where decode = genericDecode options
instance encodeKeyPairIds :: Encode KeyPairIds where encode = genericEncode options

-- | Constructs KeyPairIds from required parameters
newKeyPairIds :: Int -> KeyPairIds
newKeyPairIds _Quantity = KeyPairIds { "Quantity": _Quantity, "Items": Nothing }

-- | Constructs KeyPairIds's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKeyPairIds' :: Int -> ( { "Quantity" :: (Int) , "Items" :: Maybe (KeyPairIdList) } -> {"Quantity" :: (Int) , "Items" :: Maybe (KeyPairIdList) } ) -> KeyPairIds
newKeyPairIds' _Quantity customize = (KeyPairIds <<< customize) { "Quantity": _Quantity, "Items": Nothing }



-- | <p>A complex type that contains a Lambda function association.</p>
newtype LambdaFunctionAssociation = LambdaFunctionAssociation 
  { "LambdaFunctionARN" :: Maybe (String)
  , "EventType" :: Maybe (EventType)
  }
derive instance newtypeLambdaFunctionAssociation :: Newtype LambdaFunctionAssociation _
derive instance repGenericLambdaFunctionAssociation :: Generic LambdaFunctionAssociation _
instance showLambdaFunctionAssociation :: Show LambdaFunctionAssociation where show = genericShow
instance decodeLambdaFunctionAssociation :: Decode LambdaFunctionAssociation where decode = genericDecode options
instance encodeLambdaFunctionAssociation :: Encode LambdaFunctionAssociation where encode = genericEncode options

-- | Constructs LambdaFunctionAssociation from required parameters
newLambdaFunctionAssociation :: LambdaFunctionAssociation
newLambdaFunctionAssociation  = LambdaFunctionAssociation { "EventType": Nothing, "LambdaFunctionARN": Nothing }

-- | Constructs LambdaFunctionAssociation's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLambdaFunctionAssociation' :: ( { "LambdaFunctionARN" :: Maybe (String) , "EventType" :: Maybe (EventType) } -> {"LambdaFunctionARN" :: Maybe (String) , "EventType" :: Maybe (EventType) } ) -> LambdaFunctionAssociation
newLambdaFunctionAssociation'  customize = (LambdaFunctionAssociation <<< customize) { "EventType": Nothing, "LambdaFunctionARN": Nothing }



newtype LambdaFunctionAssociationList = LambdaFunctionAssociationList (Array LambdaFunctionAssociation)
derive instance newtypeLambdaFunctionAssociationList :: Newtype LambdaFunctionAssociationList _
derive instance repGenericLambdaFunctionAssociationList :: Generic LambdaFunctionAssociationList _
instance showLambdaFunctionAssociationList :: Show LambdaFunctionAssociationList where show = genericShow
instance decodeLambdaFunctionAssociationList :: Decode LambdaFunctionAssociationList where decode = genericDecode options
instance encodeLambdaFunctionAssociationList :: Encode LambdaFunctionAssociationList where encode = genericEncode options



-- | <p>A complex type that specifies a list of Lambda functions associations for a cache behavior.</p> <p>If you want to invoke one or more Lambda functions triggered by requests that match the <code>PathPattern</code> of the cache behavior, specify the applicable values for <code>Quantity</code> and <code>Items</code>. Note that there can be up to 4 <code>LambdaFunctionAssociation</code> items in this list (one for each possible value of <code>EventType</code>) and each <code>EventType</code> can be associated with the Lambda function only once.</p> <p>If you don't want to invoke any Lambda functions for the requests that match <code>PathPattern</code>, specify <code>0</code> for <code>Quantity</code> and omit <code>Items</code>. </p>
newtype LambdaFunctionAssociations = LambdaFunctionAssociations 
  { "Quantity" :: (Int)
  , "Items" :: Maybe (LambdaFunctionAssociationList)
  }
derive instance newtypeLambdaFunctionAssociations :: Newtype LambdaFunctionAssociations _
derive instance repGenericLambdaFunctionAssociations :: Generic LambdaFunctionAssociations _
instance showLambdaFunctionAssociations :: Show LambdaFunctionAssociations where show = genericShow
instance decodeLambdaFunctionAssociations :: Decode LambdaFunctionAssociations where decode = genericDecode options
instance encodeLambdaFunctionAssociations :: Encode LambdaFunctionAssociations where encode = genericEncode options

-- | Constructs LambdaFunctionAssociations from required parameters
newLambdaFunctionAssociations :: Int -> LambdaFunctionAssociations
newLambdaFunctionAssociations _Quantity = LambdaFunctionAssociations { "Quantity": _Quantity, "Items": Nothing }

-- | Constructs LambdaFunctionAssociations's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLambdaFunctionAssociations' :: Int -> ( { "Quantity" :: (Int) , "Items" :: Maybe (LambdaFunctionAssociationList) } -> {"Quantity" :: (Int) , "Items" :: Maybe (LambdaFunctionAssociationList) } ) -> LambdaFunctionAssociations
newLambdaFunctionAssociations' _Quantity customize = (LambdaFunctionAssociations <<< customize) { "Quantity": _Quantity, "Items": Nothing }



-- | <p>The request to list origin access identities. </p>
newtype ListCloudFrontOriginAccessIdentitiesRequest = ListCloudFrontOriginAccessIdentitiesRequest 
  { "Marker" :: Maybe (String)
  , "MaxItems" :: Maybe (String)
  }
derive instance newtypeListCloudFrontOriginAccessIdentitiesRequest :: Newtype ListCloudFrontOriginAccessIdentitiesRequest _
derive instance repGenericListCloudFrontOriginAccessIdentitiesRequest :: Generic ListCloudFrontOriginAccessIdentitiesRequest _
instance showListCloudFrontOriginAccessIdentitiesRequest :: Show ListCloudFrontOriginAccessIdentitiesRequest where show = genericShow
instance decodeListCloudFrontOriginAccessIdentitiesRequest :: Decode ListCloudFrontOriginAccessIdentitiesRequest where decode = genericDecode options
instance encodeListCloudFrontOriginAccessIdentitiesRequest :: Encode ListCloudFrontOriginAccessIdentitiesRequest where encode = genericEncode options

-- | Constructs ListCloudFrontOriginAccessIdentitiesRequest from required parameters
newListCloudFrontOriginAccessIdentitiesRequest :: ListCloudFrontOriginAccessIdentitiesRequest
newListCloudFrontOriginAccessIdentitiesRequest  = ListCloudFrontOriginAccessIdentitiesRequest { "Marker": Nothing, "MaxItems": Nothing }

-- | Constructs ListCloudFrontOriginAccessIdentitiesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListCloudFrontOriginAccessIdentitiesRequest' :: ( { "Marker" :: Maybe (String) , "MaxItems" :: Maybe (String) } -> {"Marker" :: Maybe (String) , "MaxItems" :: Maybe (String) } ) -> ListCloudFrontOriginAccessIdentitiesRequest
newListCloudFrontOriginAccessIdentitiesRequest'  customize = (ListCloudFrontOriginAccessIdentitiesRequest <<< customize) { "Marker": Nothing, "MaxItems": Nothing }



-- | <p>The returned result of the corresponding request. </p>
newtype ListCloudFrontOriginAccessIdentitiesResult = ListCloudFrontOriginAccessIdentitiesResult 
  { "CloudFrontOriginAccessIdentityList" :: Maybe (CloudFrontOriginAccessIdentityList)
  }
derive instance newtypeListCloudFrontOriginAccessIdentitiesResult :: Newtype ListCloudFrontOriginAccessIdentitiesResult _
derive instance repGenericListCloudFrontOriginAccessIdentitiesResult :: Generic ListCloudFrontOriginAccessIdentitiesResult _
instance showListCloudFrontOriginAccessIdentitiesResult :: Show ListCloudFrontOriginAccessIdentitiesResult where show = genericShow
instance decodeListCloudFrontOriginAccessIdentitiesResult :: Decode ListCloudFrontOriginAccessIdentitiesResult where decode = genericDecode options
instance encodeListCloudFrontOriginAccessIdentitiesResult :: Encode ListCloudFrontOriginAccessIdentitiesResult where encode = genericEncode options

-- | Constructs ListCloudFrontOriginAccessIdentitiesResult from required parameters
newListCloudFrontOriginAccessIdentitiesResult :: ListCloudFrontOriginAccessIdentitiesResult
newListCloudFrontOriginAccessIdentitiesResult  = ListCloudFrontOriginAccessIdentitiesResult { "CloudFrontOriginAccessIdentityList": Nothing }

-- | Constructs ListCloudFrontOriginAccessIdentitiesResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListCloudFrontOriginAccessIdentitiesResult' :: ( { "CloudFrontOriginAccessIdentityList" :: Maybe (CloudFrontOriginAccessIdentityList) } -> {"CloudFrontOriginAccessIdentityList" :: Maybe (CloudFrontOriginAccessIdentityList) } ) -> ListCloudFrontOriginAccessIdentitiesResult
newListCloudFrontOriginAccessIdentitiesResult'  customize = (ListCloudFrontOriginAccessIdentitiesResult <<< customize) { "CloudFrontOriginAccessIdentityList": Nothing }



-- | <p>The request to list distributions that are associated with a specified AWS WAF web ACL. </p>
newtype ListDistributionsByWebACLIdRequest = ListDistributionsByWebACLIdRequest 
  { "Marker" :: Maybe (String)
  , "MaxItems" :: Maybe (String)
  , "WebACLId" :: (String)
  }
derive instance newtypeListDistributionsByWebACLIdRequest :: Newtype ListDistributionsByWebACLIdRequest _
derive instance repGenericListDistributionsByWebACLIdRequest :: Generic ListDistributionsByWebACLIdRequest _
instance showListDistributionsByWebACLIdRequest :: Show ListDistributionsByWebACLIdRequest where show = genericShow
instance decodeListDistributionsByWebACLIdRequest :: Decode ListDistributionsByWebACLIdRequest where decode = genericDecode options
instance encodeListDistributionsByWebACLIdRequest :: Encode ListDistributionsByWebACLIdRequest where encode = genericEncode options

-- | Constructs ListDistributionsByWebACLIdRequest from required parameters
newListDistributionsByWebACLIdRequest :: String -> ListDistributionsByWebACLIdRequest
newListDistributionsByWebACLIdRequest _WebACLId = ListDistributionsByWebACLIdRequest { "WebACLId": _WebACLId, "Marker": Nothing, "MaxItems": Nothing }

-- | Constructs ListDistributionsByWebACLIdRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListDistributionsByWebACLIdRequest' :: String -> ( { "Marker" :: Maybe (String) , "MaxItems" :: Maybe (String) , "WebACLId" :: (String) } -> {"Marker" :: Maybe (String) , "MaxItems" :: Maybe (String) , "WebACLId" :: (String) } ) -> ListDistributionsByWebACLIdRequest
newListDistributionsByWebACLIdRequest' _WebACLId customize = (ListDistributionsByWebACLIdRequest <<< customize) { "WebACLId": _WebACLId, "Marker": Nothing, "MaxItems": Nothing }



-- | <p>The response to a request to list the distributions that are associated with a specified AWS WAF web ACL. </p>
newtype ListDistributionsByWebACLIdResult = ListDistributionsByWebACLIdResult 
  { "DistributionList" :: Maybe (DistributionList)
  }
derive instance newtypeListDistributionsByWebACLIdResult :: Newtype ListDistributionsByWebACLIdResult _
derive instance repGenericListDistributionsByWebACLIdResult :: Generic ListDistributionsByWebACLIdResult _
instance showListDistributionsByWebACLIdResult :: Show ListDistributionsByWebACLIdResult where show = genericShow
instance decodeListDistributionsByWebACLIdResult :: Decode ListDistributionsByWebACLIdResult where decode = genericDecode options
instance encodeListDistributionsByWebACLIdResult :: Encode ListDistributionsByWebACLIdResult where encode = genericEncode options

-- | Constructs ListDistributionsByWebACLIdResult from required parameters
newListDistributionsByWebACLIdResult :: ListDistributionsByWebACLIdResult
newListDistributionsByWebACLIdResult  = ListDistributionsByWebACLIdResult { "DistributionList": Nothing }

-- | Constructs ListDistributionsByWebACLIdResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListDistributionsByWebACLIdResult' :: ( { "DistributionList" :: Maybe (DistributionList) } -> {"DistributionList" :: Maybe (DistributionList) } ) -> ListDistributionsByWebACLIdResult
newListDistributionsByWebACLIdResult'  customize = (ListDistributionsByWebACLIdResult <<< customize) { "DistributionList": Nothing }



-- | <p>The request to list your distributions. </p>
newtype ListDistributionsRequest = ListDistributionsRequest 
  { "Marker" :: Maybe (String)
  , "MaxItems" :: Maybe (String)
  }
derive instance newtypeListDistributionsRequest :: Newtype ListDistributionsRequest _
derive instance repGenericListDistributionsRequest :: Generic ListDistributionsRequest _
instance showListDistributionsRequest :: Show ListDistributionsRequest where show = genericShow
instance decodeListDistributionsRequest :: Decode ListDistributionsRequest where decode = genericDecode options
instance encodeListDistributionsRequest :: Encode ListDistributionsRequest where encode = genericEncode options

-- | Constructs ListDistributionsRequest from required parameters
newListDistributionsRequest :: ListDistributionsRequest
newListDistributionsRequest  = ListDistributionsRequest { "Marker": Nothing, "MaxItems": Nothing }

-- | Constructs ListDistributionsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListDistributionsRequest' :: ( { "Marker" :: Maybe (String) , "MaxItems" :: Maybe (String) } -> {"Marker" :: Maybe (String) , "MaxItems" :: Maybe (String) } ) -> ListDistributionsRequest
newListDistributionsRequest'  customize = (ListDistributionsRequest <<< customize) { "Marker": Nothing, "MaxItems": Nothing }



-- | <p>The returned result of the corresponding request. </p>
newtype ListDistributionsResult = ListDistributionsResult 
  { "DistributionList" :: Maybe (DistributionList)
  }
derive instance newtypeListDistributionsResult :: Newtype ListDistributionsResult _
derive instance repGenericListDistributionsResult :: Generic ListDistributionsResult _
instance showListDistributionsResult :: Show ListDistributionsResult where show = genericShow
instance decodeListDistributionsResult :: Decode ListDistributionsResult where decode = genericDecode options
instance encodeListDistributionsResult :: Encode ListDistributionsResult where encode = genericEncode options

-- | Constructs ListDistributionsResult from required parameters
newListDistributionsResult :: ListDistributionsResult
newListDistributionsResult  = ListDistributionsResult { "DistributionList": Nothing }

-- | Constructs ListDistributionsResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListDistributionsResult' :: ( { "DistributionList" :: Maybe (DistributionList) } -> {"DistributionList" :: Maybe (DistributionList) } ) -> ListDistributionsResult
newListDistributionsResult'  customize = (ListDistributionsResult <<< customize) { "DistributionList": Nothing }



-- | <p>The request to list invalidations. </p>
newtype ListInvalidationsRequest = ListInvalidationsRequest 
  { "DistributionId" :: (String)
  , "Marker" :: Maybe (String)
  , "MaxItems" :: Maybe (String)
  }
derive instance newtypeListInvalidationsRequest :: Newtype ListInvalidationsRequest _
derive instance repGenericListInvalidationsRequest :: Generic ListInvalidationsRequest _
instance showListInvalidationsRequest :: Show ListInvalidationsRequest where show = genericShow
instance decodeListInvalidationsRequest :: Decode ListInvalidationsRequest where decode = genericDecode options
instance encodeListInvalidationsRequest :: Encode ListInvalidationsRequest where encode = genericEncode options

-- | Constructs ListInvalidationsRequest from required parameters
newListInvalidationsRequest :: String -> ListInvalidationsRequest
newListInvalidationsRequest _DistributionId = ListInvalidationsRequest { "DistributionId": _DistributionId, "Marker": Nothing, "MaxItems": Nothing }

-- | Constructs ListInvalidationsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListInvalidationsRequest' :: String -> ( { "DistributionId" :: (String) , "Marker" :: Maybe (String) , "MaxItems" :: Maybe (String) } -> {"DistributionId" :: (String) , "Marker" :: Maybe (String) , "MaxItems" :: Maybe (String) } ) -> ListInvalidationsRequest
newListInvalidationsRequest' _DistributionId customize = (ListInvalidationsRequest <<< customize) { "DistributionId": _DistributionId, "Marker": Nothing, "MaxItems": Nothing }



-- | <p>The returned result of the corresponding request. </p>
newtype ListInvalidationsResult = ListInvalidationsResult 
  { "InvalidationList" :: Maybe (InvalidationList)
  }
derive instance newtypeListInvalidationsResult :: Newtype ListInvalidationsResult _
derive instance repGenericListInvalidationsResult :: Generic ListInvalidationsResult _
instance showListInvalidationsResult :: Show ListInvalidationsResult where show = genericShow
instance decodeListInvalidationsResult :: Decode ListInvalidationsResult where decode = genericDecode options
instance encodeListInvalidationsResult :: Encode ListInvalidationsResult where encode = genericEncode options

-- | Constructs ListInvalidationsResult from required parameters
newListInvalidationsResult :: ListInvalidationsResult
newListInvalidationsResult  = ListInvalidationsResult { "InvalidationList": Nothing }

-- | Constructs ListInvalidationsResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListInvalidationsResult' :: ( { "InvalidationList" :: Maybe (InvalidationList) } -> {"InvalidationList" :: Maybe (InvalidationList) } ) -> ListInvalidationsResult
newListInvalidationsResult'  customize = (ListInvalidationsResult <<< customize) { "InvalidationList": Nothing }



-- | <p>The request to list your streaming distributions. </p>
newtype ListStreamingDistributionsRequest = ListStreamingDistributionsRequest 
  { "Marker" :: Maybe (String)
  , "MaxItems" :: Maybe (String)
  }
derive instance newtypeListStreamingDistributionsRequest :: Newtype ListStreamingDistributionsRequest _
derive instance repGenericListStreamingDistributionsRequest :: Generic ListStreamingDistributionsRequest _
instance showListStreamingDistributionsRequest :: Show ListStreamingDistributionsRequest where show = genericShow
instance decodeListStreamingDistributionsRequest :: Decode ListStreamingDistributionsRequest where decode = genericDecode options
instance encodeListStreamingDistributionsRequest :: Encode ListStreamingDistributionsRequest where encode = genericEncode options

-- | Constructs ListStreamingDistributionsRequest from required parameters
newListStreamingDistributionsRequest :: ListStreamingDistributionsRequest
newListStreamingDistributionsRequest  = ListStreamingDistributionsRequest { "Marker": Nothing, "MaxItems": Nothing }

-- | Constructs ListStreamingDistributionsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListStreamingDistributionsRequest' :: ( { "Marker" :: Maybe (String) , "MaxItems" :: Maybe (String) } -> {"Marker" :: Maybe (String) , "MaxItems" :: Maybe (String) } ) -> ListStreamingDistributionsRequest
newListStreamingDistributionsRequest'  customize = (ListStreamingDistributionsRequest <<< customize) { "Marker": Nothing, "MaxItems": Nothing }



-- | <p>The returned result of the corresponding request. </p>
newtype ListStreamingDistributionsResult = ListStreamingDistributionsResult 
  { "StreamingDistributionList" :: Maybe (StreamingDistributionList)
  }
derive instance newtypeListStreamingDistributionsResult :: Newtype ListStreamingDistributionsResult _
derive instance repGenericListStreamingDistributionsResult :: Generic ListStreamingDistributionsResult _
instance showListStreamingDistributionsResult :: Show ListStreamingDistributionsResult where show = genericShow
instance decodeListStreamingDistributionsResult :: Decode ListStreamingDistributionsResult where decode = genericDecode options
instance encodeListStreamingDistributionsResult :: Encode ListStreamingDistributionsResult where encode = genericEncode options

-- | Constructs ListStreamingDistributionsResult from required parameters
newListStreamingDistributionsResult :: ListStreamingDistributionsResult
newListStreamingDistributionsResult  = ListStreamingDistributionsResult { "StreamingDistributionList": Nothing }

-- | Constructs ListStreamingDistributionsResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListStreamingDistributionsResult' :: ( { "StreamingDistributionList" :: Maybe (StreamingDistributionList) } -> {"StreamingDistributionList" :: Maybe (StreamingDistributionList) } ) -> ListStreamingDistributionsResult
newListStreamingDistributionsResult'  customize = (ListStreamingDistributionsResult <<< customize) { "StreamingDistributionList": Nothing }



-- | <p> The request to list tags for a CloudFront resource.</p>
newtype ListTagsForResourceRequest = ListTagsForResourceRequest 
  { "Resource" :: (ResourceARN)
  }
derive instance newtypeListTagsForResourceRequest :: Newtype ListTagsForResourceRequest _
derive instance repGenericListTagsForResourceRequest :: Generic ListTagsForResourceRequest _
instance showListTagsForResourceRequest :: Show ListTagsForResourceRequest where show = genericShow
instance decodeListTagsForResourceRequest :: Decode ListTagsForResourceRequest where decode = genericDecode options
instance encodeListTagsForResourceRequest :: Encode ListTagsForResourceRequest where encode = genericEncode options

-- | Constructs ListTagsForResourceRequest from required parameters
newListTagsForResourceRequest :: ResourceARN -> ListTagsForResourceRequest
newListTagsForResourceRequest _Resource = ListTagsForResourceRequest { "Resource": _Resource }

-- | Constructs ListTagsForResourceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTagsForResourceRequest' :: ResourceARN -> ( { "Resource" :: (ResourceARN) } -> {"Resource" :: (ResourceARN) } ) -> ListTagsForResourceRequest
newListTagsForResourceRequest' _Resource customize = (ListTagsForResourceRequest <<< customize) { "Resource": _Resource }



-- | <p> The returned result of the corresponding request.</p>
newtype ListTagsForResourceResult = ListTagsForResourceResult 
  { "Tags" :: (Tags)
  }
derive instance newtypeListTagsForResourceResult :: Newtype ListTagsForResourceResult _
derive instance repGenericListTagsForResourceResult :: Generic ListTagsForResourceResult _
instance showListTagsForResourceResult :: Show ListTagsForResourceResult where show = genericShow
instance decodeListTagsForResourceResult :: Decode ListTagsForResourceResult where decode = genericDecode options
instance encodeListTagsForResourceResult :: Encode ListTagsForResourceResult where encode = genericEncode options

-- | Constructs ListTagsForResourceResult from required parameters
newListTagsForResourceResult :: Tags -> ListTagsForResourceResult
newListTagsForResourceResult _Tags = ListTagsForResourceResult { "Tags": _Tags }

-- | Constructs ListTagsForResourceResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTagsForResourceResult' :: Tags -> ( { "Tags" :: (Tags) } -> {"Tags" :: (Tags) } ) -> ListTagsForResourceResult
newListTagsForResourceResult' _Tags customize = (ListTagsForResourceResult <<< customize) { "Tags": _Tags }



newtype LocationList = LocationList (Array String)
derive instance newtypeLocationList :: Newtype LocationList _
derive instance repGenericLocationList :: Generic LocationList _
instance showLocationList :: Show LocationList where show = genericShow
instance decodeLocationList :: Decode LocationList where decode = genericDecode options
instance encodeLocationList :: Encode LocationList where encode = genericEncode options



-- | <p>A complex type that controls whether access logs are written for the distribution.</p>
newtype LoggingConfig = LoggingConfig 
  { "Enabled" :: (Boolean)
  , "IncludeCookies" :: (Boolean)
  , "Bucket" :: (String)
  , "Prefix" :: (String)
  }
derive instance newtypeLoggingConfig :: Newtype LoggingConfig _
derive instance repGenericLoggingConfig :: Generic LoggingConfig _
instance showLoggingConfig :: Show LoggingConfig where show = genericShow
instance decodeLoggingConfig :: Decode LoggingConfig where decode = genericDecode options
instance encodeLoggingConfig :: Encode LoggingConfig where encode = genericEncode options

-- | Constructs LoggingConfig from required parameters
newLoggingConfig :: String -> Boolean -> Boolean -> String -> LoggingConfig
newLoggingConfig _Bucket _Enabled _IncludeCookies _Prefix = LoggingConfig { "Bucket": _Bucket, "Enabled": _Enabled, "IncludeCookies": _IncludeCookies, "Prefix": _Prefix }

-- | Constructs LoggingConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLoggingConfig' :: String -> Boolean -> Boolean -> String -> ( { "Enabled" :: (Boolean) , "IncludeCookies" :: (Boolean) , "Bucket" :: (String) , "Prefix" :: (String) } -> {"Enabled" :: (Boolean) , "IncludeCookies" :: (Boolean) , "Bucket" :: (String) , "Prefix" :: (String) } ) -> LoggingConfig
newLoggingConfig' _Bucket _Enabled _IncludeCookies _Prefix customize = (LoggingConfig <<< customize) { "Bucket": _Bucket, "Enabled": _Enabled, "IncludeCookies": _IncludeCookies, "Prefix": _Prefix }



newtype Method = Method String
derive instance newtypeMethod :: Newtype Method _
derive instance repGenericMethod :: Generic Method _
instance showMethod :: Show Method where show = genericShow
instance decodeMethod :: Decode Method where decode = genericDecode options
instance encodeMethod :: Encode Method where encode = genericEncode options



newtype MethodsList = MethodsList (Array Method)
derive instance newtypeMethodsList :: Newtype MethodsList _
derive instance repGenericMethodsList :: Generic MethodsList _
instance showMethodsList :: Show MethodsList where show = genericShow
instance decodeMethodsList :: Decode MethodsList where decode = genericDecode options
instance encodeMethodsList :: Encode MethodsList where encode = genericEncode options



newtype MinimumProtocolVersion = MinimumProtocolVersion String
derive instance newtypeMinimumProtocolVersion :: Newtype MinimumProtocolVersion _
derive instance repGenericMinimumProtocolVersion :: Generic MinimumProtocolVersion _
instance showMinimumProtocolVersion :: Show MinimumProtocolVersion where show = genericShow
instance decodeMinimumProtocolVersion :: Decode MinimumProtocolVersion where decode = genericDecode options
instance encodeMinimumProtocolVersion :: Encode MinimumProtocolVersion where encode = genericEncode options



-- | <p>This operation requires a body. Ensure that the body is present and the Content-Type header is set.</p>
newtype MissingBody = MissingBody 
  { "Message" :: Maybe (String)
  }
derive instance newtypeMissingBody :: Newtype MissingBody _
derive instance repGenericMissingBody :: Generic MissingBody _
instance showMissingBody :: Show MissingBody where show = genericShow
instance decodeMissingBody :: Decode MissingBody where decode = genericDecode options
instance encodeMissingBody :: Encode MissingBody where encode = genericEncode options

-- | Constructs MissingBody from required parameters
newMissingBody :: MissingBody
newMissingBody  = MissingBody { "Message": Nothing }

-- | Constructs MissingBody's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMissingBody' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> MissingBody
newMissingBody'  customize = (MissingBody <<< customize) { "Message": Nothing }



-- | <p>The specified origin access identity does not exist.</p>
newtype NoSuchCloudFrontOriginAccessIdentity = NoSuchCloudFrontOriginAccessIdentity 
  { "Message" :: Maybe (String)
  }
derive instance newtypeNoSuchCloudFrontOriginAccessIdentity :: Newtype NoSuchCloudFrontOriginAccessIdentity _
derive instance repGenericNoSuchCloudFrontOriginAccessIdentity :: Generic NoSuchCloudFrontOriginAccessIdentity _
instance showNoSuchCloudFrontOriginAccessIdentity :: Show NoSuchCloudFrontOriginAccessIdentity where show = genericShow
instance decodeNoSuchCloudFrontOriginAccessIdentity :: Decode NoSuchCloudFrontOriginAccessIdentity where decode = genericDecode options
instance encodeNoSuchCloudFrontOriginAccessIdentity :: Encode NoSuchCloudFrontOriginAccessIdentity where encode = genericEncode options

-- | Constructs NoSuchCloudFrontOriginAccessIdentity from required parameters
newNoSuchCloudFrontOriginAccessIdentity :: NoSuchCloudFrontOriginAccessIdentity
newNoSuchCloudFrontOriginAccessIdentity  = NoSuchCloudFrontOriginAccessIdentity { "Message": Nothing }

-- | Constructs NoSuchCloudFrontOriginAccessIdentity's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNoSuchCloudFrontOriginAccessIdentity' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> NoSuchCloudFrontOriginAccessIdentity
newNoSuchCloudFrontOriginAccessIdentity'  customize = (NoSuchCloudFrontOriginAccessIdentity <<< customize) { "Message": Nothing }



-- | <p>The specified distribution does not exist.</p>
newtype NoSuchDistribution = NoSuchDistribution 
  { "Message" :: Maybe (String)
  }
derive instance newtypeNoSuchDistribution :: Newtype NoSuchDistribution _
derive instance repGenericNoSuchDistribution :: Generic NoSuchDistribution _
instance showNoSuchDistribution :: Show NoSuchDistribution where show = genericShow
instance decodeNoSuchDistribution :: Decode NoSuchDistribution where decode = genericDecode options
instance encodeNoSuchDistribution :: Encode NoSuchDistribution where encode = genericEncode options

-- | Constructs NoSuchDistribution from required parameters
newNoSuchDistribution :: NoSuchDistribution
newNoSuchDistribution  = NoSuchDistribution { "Message": Nothing }

-- | Constructs NoSuchDistribution's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNoSuchDistribution' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> NoSuchDistribution
newNoSuchDistribution'  customize = (NoSuchDistribution <<< customize) { "Message": Nothing }



-- | <p>The specified invalidation does not exist.</p>
newtype NoSuchInvalidation = NoSuchInvalidation 
  { "Message" :: Maybe (String)
  }
derive instance newtypeNoSuchInvalidation :: Newtype NoSuchInvalidation _
derive instance repGenericNoSuchInvalidation :: Generic NoSuchInvalidation _
instance showNoSuchInvalidation :: Show NoSuchInvalidation where show = genericShow
instance decodeNoSuchInvalidation :: Decode NoSuchInvalidation where decode = genericDecode options
instance encodeNoSuchInvalidation :: Encode NoSuchInvalidation where encode = genericEncode options

-- | Constructs NoSuchInvalidation from required parameters
newNoSuchInvalidation :: NoSuchInvalidation
newNoSuchInvalidation  = NoSuchInvalidation { "Message": Nothing }

-- | Constructs NoSuchInvalidation's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNoSuchInvalidation' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> NoSuchInvalidation
newNoSuchInvalidation'  customize = (NoSuchInvalidation <<< customize) { "Message": Nothing }



-- | <p>No origin exists with the specified <code>Origin Id</code>. </p>
newtype NoSuchOrigin = NoSuchOrigin 
  { "Message" :: Maybe (String)
  }
derive instance newtypeNoSuchOrigin :: Newtype NoSuchOrigin _
derive instance repGenericNoSuchOrigin :: Generic NoSuchOrigin _
instance showNoSuchOrigin :: Show NoSuchOrigin where show = genericShow
instance decodeNoSuchOrigin :: Decode NoSuchOrigin where decode = genericDecode options
instance encodeNoSuchOrigin :: Encode NoSuchOrigin where encode = genericEncode options

-- | Constructs NoSuchOrigin from required parameters
newNoSuchOrigin :: NoSuchOrigin
newNoSuchOrigin  = NoSuchOrigin { "Message": Nothing }

-- | Constructs NoSuchOrigin's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNoSuchOrigin' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> NoSuchOrigin
newNoSuchOrigin'  customize = (NoSuchOrigin <<< customize) { "Message": Nothing }



newtype NoSuchResource = NoSuchResource 
  { "Message" :: Maybe (String)
  }
derive instance newtypeNoSuchResource :: Newtype NoSuchResource _
derive instance repGenericNoSuchResource :: Generic NoSuchResource _
instance showNoSuchResource :: Show NoSuchResource where show = genericShow
instance decodeNoSuchResource :: Decode NoSuchResource where decode = genericDecode options
instance encodeNoSuchResource :: Encode NoSuchResource where encode = genericEncode options

-- | Constructs NoSuchResource from required parameters
newNoSuchResource :: NoSuchResource
newNoSuchResource  = NoSuchResource { "Message": Nothing }

-- | Constructs NoSuchResource's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNoSuchResource' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> NoSuchResource
newNoSuchResource'  customize = (NoSuchResource <<< customize) { "Message": Nothing }



-- | <p>The specified streaming distribution does not exist.</p>
newtype NoSuchStreamingDistribution = NoSuchStreamingDistribution 
  { "Message" :: Maybe (String)
  }
derive instance newtypeNoSuchStreamingDistribution :: Newtype NoSuchStreamingDistribution _
derive instance repGenericNoSuchStreamingDistribution :: Generic NoSuchStreamingDistribution _
instance showNoSuchStreamingDistribution :: Show NoSuchStreamingDistribution where show = genericShow
instance decodeNoSuchStreamingDistribution :: Decode NoSuchStreamingDistribution where decode = genericDecode options
instance encodeNoSuchStreamingDistribution :: Encode NoSuchStreamingDistribution where encode = genericEncode options

-- | Constructs NoSuchStreamingDistribution from required parameters
newNoSuchStreamingDistribution :: NoSuchStreamingDistribution
newNoSuchStreamingDistribution  = NoSuchStreamingDistribution { "Message": Nothing }

-- | Constructs NoSuchStreamingDistribution's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNoSuchStreamingDistribution' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> NoSuchStreamingDistribution
newNoSuchStreamingDistribution'  customize = (NoSuchStreamingDistribution <<< customize) { "Message": Nothing }



-- | <p>A complex type that describes the Amazon S3 bucket or the HTTP server (for example, a web server) from which CloudFront gets your files. You must create at least one origin.</p> <p>For the current limit on the number of origins that you can create for a distribution, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_cloudfront">Amazon CloudFront Limits</a> in the <i>AWS General Reference</i>.</p>
newtype Origin = Origin 
  { "Id" :: (String)
  , "DomainName" :: (String)
  , "OriginPath" :: Maybe (String)
  , "CustomHeaders" :: Maybe (CustomHeaders)
  , "S3OriginConfig" :: Maybe (S3OriginConfig)
  , "CustomOriginConfig" :: Maybe (CustomOriginConfig)
  }
derive instance newtypeOrigin :: Newtype Origin _
derive instance repGenericOrigin :: Generic Origin _
instance showOrigin :: Show Origin where show = genericShow
instance decodeOrigin :: Decode Origin where decode = genericDecode options
instance encodeOrigin :: Encode Origin where encode = genericEncode options

-- | Constructs Origin from required parameters
newOrigin :: String -> String -> Origin
newOrigin _DomainName _Id = Origin { "DomainName": _DomainName, "Id": _Id, "CustomHeaders": Nothing, "CustomOriginConfig": Nothing, "OriginPath": Nothing, "S3OriginConfig": Nothing }

-- | Constructs Origin's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOrigin' :: String -> String -> ( { "Id" :: (String) , "DomainName" :: (String) , "OriginPath" :: Maybe (String) , "CustomHeaders" :: Maybe (CustomHeaders) , "S3OriginConfig" :: Maybe (S3OriginConfig) , "CustomOriginConfig" :: Maybe (CustomOriginConfig) } -> {"Id" :: (String) , "DomainName" :: (String) , "OriginPath" :: Maybe (String) , "CustomHeaders" :: Maybe (CustomHeaders) , "S3OriginConfig" :: Maybe (S3OriginConfig) , "CustomOriginConfig" :: Maybe (CustomOriginConfig) } ) -> Origin
newOrigin' _DomainName _Id customize = (Origin <<< customize) { "DomainName": _DomainName, "Id": _Id, "CustomHeaders": Nothing, "CustomOriginConfig": Nothing, "OriginPath": Nothing, "S3OriginConfig": Nothing }



-- | <p>A complex type that contains <code>HeaderName</code> and <code>HeaderValue</code> elements, if any, for this distribution. </p>
newtype OriginCustomHeader = OriginCustomHeader 
  { "HeaderName" :: (String)
  , "HeaderValue" :: (String)
  }
derive instance newtypeOriginCustomHeader :: Newtype OriginCustomHeader _
derive instance repGenericOriginCustomHeader :: Generic OriginCustomHeader _
instance showOriginCustomHeader :: Show OriginCustomHeader where show = genericShow
instance decodeOriginCustomHeader :: Decode OriginCustomHeader where decode = genericDecode options
instance encodeOriginCustomHeader :: Encode OriginCustomHeader where encode = genericEncode options

-- | Constructs OriginCustomHeader from required parameters
newOriginCustomHeader :: String -> String -> OriginCustomHeader
newOriginCustomHeader _HeaderName _HeaderValue = OriginCustomHeader { "HeaderName": _HeaderName, "HeaderValue": _HeaderValue }

-- | Constructs OriginCustomHeader's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOriginCustomHeader' :: String -> String -> ( { "HeaderName" :: (String) , "HeaderValue" :: (String) } -> {"HeaderName" :: (String) , "HeaderValue" :: (String) } ) -> OriginCustomHeader
newOriginCustomHeader' _HeaderName _HeaderValue customize = (OriginCustomHeader <<< customize) { "HeaderName": _HeaderName, "HeaderValue": _HeaderValue }



newtype OriginCustomHeadersList = OriginCustomHeadersList (Array OriginCustomHeader)
derive instance newtypeOriginCustomHeadersList :: Newtype OriginCustomHeadersList _
derive instance repGenericOriginCustomHeadersList :: Generic OriginCustomHeadersList _
instance showOriginCustomHeadersList :: Show OriginCustomHeadersList where show = genericShow
instance decodeOriginCustomHeadersList :: Decode OriginCustomHeadersList where decode = genericDecode options
instance encodeOriginCustomHeadersList :: Encode OriginCustomHeadersList where encode = genericEncode options



newtype OriginList = OriginList (Array Origin)
derive instance newtypeOriginList :: Newtype OriginList _
derive instance repGenericOriginList :: Generic OriginList _
instance showOriginList :: Show OriginList where show = genericShow
instance decodeOriginList :: Decode OriginList where decode = genericDecode options
instance encodeOriginList :: Encode OriginList where encode = genericEncode options



newtype OriginProtocolPolicy = OriginProtocolPolicy String
derive instance newtypeOriginProtocolPolicy :: Newtype OriginProtocolPolicy _
derive instance repGenericOriginProtocolPolicy :: Generic OriginProtocolPolicy _
instance showOriginProtocolPolicy :: Show OriginProtocolPolicy where show = genericShow
instance decodeOriginProtocolPolicy :: Decode OriginProtocolPolicy where decode = genericDecode options
instance encodeOriginProtocolPolicy :: Encode OriginProtocolPolicy where encode = genericEncode options



-- | <p>A complex type that contains information about the SSL/TLS protocols that CloudFront can use when establishing an HTTPS connection with your origin. </p>
newtype OriginSslProtocols = OriginSslProtocols 
  { "Quantity" :: (Int)
  , "Items" :: (SslProtocolsList)
  }
derive instance newtypeOriginSslProtocols :: Newtype OriginSslProtocols _
derive instance repGenericOriginSslProtocols :: Generic OriginSslProtocols _
instance showOriginSslProtocols :: Show OriginSslProtocols where show = genericShow
instance decodeOriginSslProtocols :: Decode OriginSslProtocols where decode = genericDecode options
instance encodeOriginSslProtocols :: Encode OriginSslProtocols where encode = genericEncode options

-- | Constructs OriginSslProtocols from required parameters
newOriginSslProtocols :: SslProtocolsList -> Int -> OriginSslProtocols
newOriginSslProtocols _Items _Quantity = OriginSslProtocols { "Items": _Items, "Quantity": _Quantity }

-- | Constructs OriginSslProtocols's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOriginSslProtocols' :: SslProtocolsList -> Int -> ( { "Quantity" :: (Int) , "Items" :: (SslProtocolsList) } -> {"Quantity" :: (Int) , "Items" :: (SslProtocolsList) } ) -> OriginSslProtocols
newOriginSslProtocols' _Items _Quantity customize = (OriginSslProtocols <<< customize) { "Items": _Items, "Quantity": _Quantity }



-- | <p>A complex type that contains information about origins for this distribution. </p>
newtype Origins = Origins 
  { "Quantity" :: (Int)
  , "Items" :: Maybe (OriginList)
  }
derive instance newtypeOrigins :: Newtype Origins _
derive instance repGenericOrigins :: Generic Origins _
instance showOrigins :: Show Origins where show = genericShow
instance decodeOrigins :: Decode Origins where decode = genericDecode options
instance encodeOrigins :: Encode Origins where encode = genericEncode options

-- | Constructs Origins from required parameters
newOrigins :: Int -> Origins
newOrigins _Quantity = Origins { "Quantity": _Quantity, "Items": Nothing }

-- | Constructs Origins's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOrigins' :: Int -> ( { "Quantity" :: (Int) , "Items" :: Maybe (OriginList) } -> {"Quantity" :: (Int) , "Items" :: Maybe (OriginList) } ) -> Origins
newOrigins' _Quantity customize = (Origins <<< customize) { "Quantity": _Quantity, "Items": Nothing }



newtype PathList = PathList (Array String)
derive instance newtypePathList :: Newtype PathList _
derive instance repGenericPathList :: Generic PathList _
instance showPathList :: Show PathList where show = genericShow
instance decodePathList :: Decode PathList where decode = genericDecode options
instance encodePathList :: Encode PathList where encode = genericEncode options



-- | <p>A complex type that contains information about the objects that you want to invalidate. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html#invalidation-specifying-objects">Specifying the Objects to Invalidate</a> in the <i>Amazon CloudFront Developer Guide</i>. </p>
newtype Paths = Paths 
  { "Quantity" :: (Int)
  , "Items" :: Maybe (PathList)
  }
derive instance newtypePaths :: Newtype Paths _
derive instance repGenericPaths :: Generic Paths _
instance showPaths :: Show Paths where show = genericShow
instance decodePaths :: Decode Paths where decode = genericDecode options
instance encodePaths :: Encode Paths where encode = genericEncode options

-- | Constructs Paths from required parameters
newPaths :: Int -> Paths
newPaths _Quantity = Paths { "Quantity": _Quantity, "Items": Nothing }

-- | Constructs Paths's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPaths' :: Int -> ( { "Quantity" :: (Int) , "Items" :: Maybe (PathList) } -> {"Quantity" :: (Int) , "Items" :: Maybe (PathList) } ) -> Paths
newPaths' _Quantity customize = (Paths <<< customize) { "Quantity": _Quantity, "Items": Nothing }



-- | <p>The precondition given in one or more of the request-header fields evaluated to <code>false</code>. </p>
newtype PreconditionFailed = PreconditionFailed 
  { "Message" :: Maybe (String)
  }
derive instance newtypePreconditionFailed :: Newtype PreconditionFailed _
derive instance repGenericPreconditionFailed :: Generic PreconditionFailed _
instance showPreconditionFailed :: Show PreconditionFailed where show = genericShow
instance decodePreconditionFailed :: Decode PreconditionFailed where decode = genericDecode options
instance encodePreconditionFailed :: Encode PreconditionFailed where encode = genericEncode options

-- | Constructs PreconditionFailed from required parameters
newPreconditionFailed :: PreconditionFailed
newPreconditionFailed  = PreconditionFailed { "Message": Nothing }

-- | Constructs PreconditionFailed's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPreconditionFailed' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> PreconditionFailed
newPreconditionFailed'  customize = (PreconditionFailed <<< customize) { "Message": Nothing }



newtype PriceClass = PriceClass String
derive instance newtypePriceClass :: Newtype PriceClass _
derive instance repGenericPriceClass :: Generic PriceClass _
instance showPriceClass :: Show PriceClass where show = genericShow
instance decodePriceClass :: Decode PriceClass where decode = genericDecode options
instance encodePriceClass :: Encode PriceClass where encode = genericEncode options



newtype QueryStringCacheKeys = QueryStringCacheKeys 
  { "Quantity" :: (Int)
  , "Items" :: Maybe (QueryStringCacheKeysList)
  }
derive instance newtypeQueryStringCacheKeys :: Newtype QueryStringCacheKeys _
derive instance repGenericQueryStringCacheKeys :: Generic QueryStringCacheKeys _
instance showQueryStringCacheKeys :: Show QueryStringCacheKeys where show = genericShow
instance decodeQueryStringCacheKeys :: Decode QueryStringCacheKeys where decode = genericDecode options
instance encodeQueryStringCacheKeys :: Encode QueryStringCacheKeys where encode = genericEncode options

-- | Constructs QueryStringCacheKeys from required parameters
newQueryStringCacheKeys :: Int -> QueryStringCacheKeys
newQueryStringCacheKeys _Quantity = QueryStringCacheKeys { "Quantity": _Quantity, "Items": Nothing }

-- | Constructs QueryStringCacheKeys's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newQueryStringCacheKeys' :: Int -> ( { "Quantity" :: (Int) , "Items" :: Maybe (QueryStringCacheKeysList) } -> {"Quantity" :: (Int) , "Items" :: Maybe (QueryStringCacheKeysList) } ) -> QueryStringCacheKeys
newQueryStringCacheKeys' _Quantity customize = (QueryStringCacheKeys <<< customize) { "Quantity": _Quantity, "Items": Nothing }



newtype QueryStringCacheKeysList = QueryStringCacheKeysList (Array String)
derive instance newtypeQueryStringCacheKeysList :: Newtype QueryStringCacheKeysList _
derive instance repGenericQueryStringCacheKeysList :: Generic QueryStringCacheKeysList _
instance showQueryStringCacheKeysList :: Show QueryStringCacheKeysList where show = genericShow
instance decodeQueryStringCacheKeysList :: Decode QueryStringCacheKeysList where decode = genericDecode options
instance encodeQueryStringCacheKeysList :: Encode QueryStringCacheKeysList where encode = genericEncode options



newtype ResourceARN = ResourceARN String
derive instance newtypeResourceARN :: Newtype ResourceARN _
derive instance repGenericResourceARN :: Generic ResourceARN _
instance showResourceARN :: Show ResourceARN where show = genericShow
instance decodeResourceARN :: Decode ResourceARN where decode = genericDecode options
instance encodeResourceARN :: Encode ResourceARN where encode = genericEncode options



-- | <p>A complex type that identifies ways in which you want to restrict distribution of your content.</p>
newtype Restrictions = Restrictions 
  { "GeoRestriction" :: (GeoRestriction)
  }
derive instance newtypeRestrictions :: Newtype Restrictions _
derive instance repGenericRestrictions :: Generic Restrictions _
instance showRestrictions :: Show Restrictions where show = genericShow
instance decodeRestrictions :: Decode Restrictions where decode = genericDecode options
instance encodeRestrictions :: Encode Restrictions where encode = genericEncode options

-- | Constructs Restrictions from required parameters
newRestrictions :: GeoRestriction -> Restrictions
newRestrictions _GeoRestriction = Restrictions { "GeoRestriction": _GeoRestriction }

-- | Constructs Restrictions's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRestrictions' :: GeoRestriction -> ( { "GeoRestriction" :: (GeoRestriction) } -> {"GeoRestriction" :: (GeoRestriction) } ) -> Restrictions
newRestrictions' _GeoRestriction customize = (Restrictions <<< customize) { "GeoRestriction": _GeoRestriction }



-- | <p>A complex type that contains information about the Amazon S3 bucket from which you want CloudFront to get your media files for distribution.</p>
newtype S3Origin = S3Origin 
  { "DomainName" :: (String)
  , "OriginAccessIdentity" :: (String)
  }
derive instance newtypeS3Origin :: Newtype S3Origin _
derive instance repGenericS3Origin :: Generic S3Origin _
instance showS3Origin :: Show S3Origin where show = genericShow
instance decodeS3Origin :: Decode S3Origin where decode = genericDecode options
instance encodeS3Origin :: Encode S3Origin where encode = genericEncode options

-- | Constructs S3Origin from required parameters
newS3Origin :: String -> String -> S3Origin
newS3Origin _DomainName _OriginAccessIdentity = S3Origin { "DomainName": _DomainName, "OriginAccessIdentity": _OriginAccessIdentity }

-- | Constructs S3Origin's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newS3Origin' :: String -> String -> ( { "DomainName" :: (String) , "OriginAccessIdentity" :: (String) } -> {"DomainName" :: (String) , "OriginAccessIdentity" :: (String) } ) -> S3Origin
newS3Origin' _DomainName _OriginAccessIdentity customize = (S3Origin <<< customize) { "DomainName": _DomainName, "OriginAccessIdentity": _OriginAccessIdentity }



-- | <p>A complex type that contains information about the Amazon S3 origin. If the origin is a custom origin, use the <code>CustomOriginConfig</code> element instead.</p>
newtype S3OriginConfig = S3OriginConfig 
  { "OriginAccessIdentity" :: (String)
  }
derive instance newtypeS3OriginConfig :: Newtype S3OriginConfig _
derive instance repGenericS3OriginConfig :: Generic S3OriginConfig _
instance showS3OriginConfig :: Show S3OriginConfig where show = genericShow
instance decodeS3OriginConfig :: Decode S3OriginConfig where decode = genericDecode options
instance encodeS3OriginConfig :: Encode S3OriginConfig where encode = genericEncode options

-- | Constructs S3OriginConfig from required parameters
newS3OriginConfig :: String -> S3OriginConfig
newS3OriginConfig _OriginAccessIdentity = S3OriginConfig { "OriginAccessIdentity": _OriginAccessIdentity }

-- | Constructs S3OriginConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newS3OriginConfig' :: String -> ( { "OriginAccessIdentity" :: (String) } -> {"OriginAccessIdentity" :: (String) } ) -> S3OriginConfig
newS3OriginConfig' _OriginAccessIdentity customize = (S3OriginConfig <<< customize) { "OriginAccessIdentity": _OriginAccessIdentity }



newtype SSLSupportMethod = SSLSupportMethod String
derive instance newtypeSSLSupportMethod :: Newtype SSLSupportMethod _
derive instance repGenericSSLSupportMethod :: Generic SSLSupportMethod _
instance showSSLSupportMethod :: Show SSLSupportMethod where show = genericShow
instance decodeSSLSupportMethod :: Decode SSLSupportMethod where decode = genericDecode options
instance encodeSSLSupportMethod :: Encode SSLSupportMethod where encode = genericEncode options



-- | <p>A complex type that lists the AWS accounts that were included in the <code>TrustedSigners</code> complex type, as well as their active CloudFront key pair IDs, if any. </p>
newtype Signer = Signer 
  { "AwsAccountNumber" :: Maybe (String)
  , "KeyPairIds" :: Maybe (KeyPairIds)
  }
derive instance newtypeSigner :: Newtype Signer _
derive instance repGenericSigner :: Generic Signer _
instance showSigner :: Show Signer where show = genericShow
instance decodeSigner :: Decode Signer where decode = genericDecode options
instance encodeSigner :: Encode Signer where encode = genericEncode options

-- | Constructs Signer from required parameters
newSigner :: Signer
newSigner  = Signer { "AwsAccountNumber": Nothing, "KeyPairIds": Nothing }

-- | Constructs Signer's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSigner' :: ( { "AwsAccountNumber" :: Maybe (String) , "KeyPairIds" :: Maybe (KeyPairIds) } -> {"AwsAccountNumber" :: Maybe (String) , "KeyPairIds" :: Maybe (KeyPairIds) } ) -> Signer
newSigner'  customize = (Signer <<< customize) { "AwsAccountNumber": Nothing, "KeyPairIds": Nothing }



newtype SignerList = SignerList (Array Signer)
derive instance newtypeSignerList :: Newtype SignerList _
derive instance repGenericSignerList :: Generic SignerList _
instance showSignerList :: Show SignerList where show = genericShow
instance decodeSignerList :: Decode SignerList where decode = genericDecode options
instance encodeSignerList :: Encode SignerList where encode = genericEncode options



newtype SslProtocol = SslProtocol String
derive instance newtypeSslProtocol :: Newtype SslProtocol _
derive instance repGenericSslProtocol :: Generic SslProtocol _
instance showSslProtocol :: Show SslProtocol where show = genericShow
instance decodeSslProtocol :: Decode SslProtocol where decode = genericDecode options
instance encodeSslProtocol :: Encode SslProtocol where encode = genericEncode options



newtype SslProtocolsList = SslProtocolsList (Array SslProtocol)
derive instance newtypeSslProtocolsList :: Newtype SslProtocolsList _
derive instance repGenericSslProtocolsList :: Generic SslProtocolsList _
instance showSslProtocolsList :: Show SslProtocolsList where show = genericShow
instance decodeSslProtocolsList :: Decode SslProtocolsList where decode = genericDecode options
instance encodeSslProtocolsList :: Encode SslProtocolsList where encode = genericEncode options



-- | <p>A streaming distribution. </p>
newtype StreamingDistribution = StreamingDistribution 
  { "Id" :: (String)
  , "ARN" :: (String)
  , "Status" :: (String)
  , "LastModifiedTime" :: Maybe (Types.Timestamp)
  , "DomainName" :: (String)
  , "ActiveTrustedSigners" :: (ActiveTrustedSigners)
  , "StreamingDistributionConfig" :: (StreamingDistributionConfig)
  }
derive instance newtypeStreamingDistribution :: Newtype StreamingDistribution _
derive instance repGenericStreamingDistribution :: Generic StreamingDistribution _
instance showStreamingDistribution :: Show StreamingDistribution where show = genericShow
instance decodeStreamingDistribution :: Decode StreamingDistribution where decode = genericDecode options
instance encodeStreamingDistribution :: Encode StreamingDistribution where encode = genericEncode options

-- | Constructs StreamingDistribution from required parameters
newStreamingDistribution :: String -> ActiveTrustedSigners -> String -> String -> String -> StreamingDistributionConfig -> StreamingDistribution
newStreamingDistribution _ARN _ActiveTrustedSigners _DomainName _Id _Status _StreamingDistributionConfig = StreamingDistribution { "ARN": _ARN, "ActiveTrustedSigners": _ActiveTrustedSigners, "DomainName": _DomainName, "Id": _Id, "Status": _Status, "StreamingDistributionConfig": _StreamingDistributionConfig, "LastModifiedTime": Nothing }

-- | Constructs StreamingDistribution's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStreamingDistribution' :: String -> ActiveTrustedSigners -> String -> String -> String -> StreamingDistributionConfig -> ( { "Id" :: (String) , "ARN" :: (String) , "Status" :: (String) , "LastModifiedTime" :: Maybe (Types.Timestamp) , "DomainName" :: (String) , "ActiveTrustedSigners" :: (ActiveTrustedSigners) , "StreamingDistributionConfig" :: (StreamingDistributionConfig) } -> {"Id" :: (String) , "ARN" :: (String) , "Status" :: (String) , "LastModifiedTime" :: Maybe (Types.Timestamp) , "DomainName" :: (String) , "ActiveTrustedSigners" :: (ActiveTrustedSigners) , "StreamingDistributionConfig" :: (StreamingDistributionConfig) } ) -> StreamingDistribution
newStreamingDistribution' _ARN _ActiveTrustedSigners _DomainName _Id _Status _StreamingDistributionConfig customize = (StreamingDistribution <<< customize) { "ARN": _ARN, "ActiveTrustedSigners": _ActiveTrustedSigners, "DomainName": _DomainName, "Id": _Id, "Status": _Status, "StreamingDistributionConfig": _StreamingDistributionConfig, "LastModifiedTime": Nothing }



newtype StreamingDistributionAlreadyExists = StreamingDistributionAlreadyExists 
  { "Message" :: Maybe (String)
  }
derive instance newtypeStreamingDistributionAlreadyExists :: Newtype StreamingDistributionAlreadyExists _
derive instance repGenericStreamingDistributionAlreadyExists :: Generic StreamingDistributionAlreadyExists _
instance showStreamingDistributionAlreadyExists :: Show StreamingDistributionAlreadyExists where show = genericShow
instance decodeStreamingDistributionAlreadyExists :: Decode StreamingDistributionAlreadyExists where decode = genericDecode options
instance encodeStreamingDistributionAlreadyExists :: Encode StreamingDistributionAlreadyExists where encode = genericEncode options

-- | Constructs StreamingDistributionAlreadyExists from required parameters
newStreamingDistributionAlreadyExists :: StreamingDistributionAlreadyExists
newStreamingDistributionAlreadyExists  = StreamingDistributionAlreadyExists { "Message": Nothing }

-- | Constructs StreamingDistributionAlreadyExists's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStreamingDistributionAlreadyExists' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> StreamingDistributionAlreadyExists
newStreamingDistributionAlreadyExists'  customize = (StreamingDistributionAlreadyExists <<< customize) { "Message": Nothing }



-- | <p>The RTMP distribution's configuration information.</p>
newtype StreamingDistributionConfig = StreamingDistributionConfig 
  { "CallerReference" :: (String)
  , "S3Origin" :: (S3Origin)
  , "Aliases" :: Maybe (Aliases)
  , "Comment" :: (String)
  , "Logging" :: Maybe (StreamingLoggingConfig)
  , "TrustedSigners" :: (TrustedSigners)
  , "PriceClass" :: Maybe (PriceClass)
  , "Enabled" :: (Boolean)
  }
derive instance newtypeStreamingDistributionConfig :: Newtype StreamingDistributionConfig _
derive instance repGenericStreamingDistributionConfig :: Generic StreamingDistributionConfig _
instance showStreamingDistributionConfig :: Show StreamingDistributionConfig where show = genericShow
instance decodeStreamingDistributionConfig :: Decode StreamingDistributionConfig where decode = genericDecode options
instance encodeStreamingDistributionConfig :: Encode StreamingDistributionConfig where encode = genericEncode options

-- | Constructs StreamingDistributionConfig from required parameters
newStreamingDistributionConfig :: String -> String -> Boolean -> S3Origin -> TrustedSigners -> StreamingDistributionConfig
newStreamingDistributionConfig _CallerReference _Comment _Enabled _S3Origin _TrustedSigners = StreamingDistributionConfig { "CallerReference": _CallerReference, "Comment": _Comment, "Enabled": _Enabled, "S3Origin": _S3Origin, "TrustedSigners": _TrustedSigners, "Aliases": Nothing, "Logging": Nothing, "PriceClass": Nothing }

-- | Constructs StreamingDistributionConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStreamingDistributionConfig' :: String -> String -> Boolean -> S3Origin -> TrustedSigners -> ( { "CallerReference" :: (String) , "S3Origin" :: (S3Origin) , "Aliases" :: Maybe (Aliases) , "Comment" :: (String) , "Logging" :: Maybe (StreamingLoggingConfig) , "TrustedSigners" :: (TrustedSigners) , "PriceClass" :: Maybe (PriceClass) , "Enabled" :: (Boolean) } -> {"CallerReference" :: (String) , "S3Origin" :: (S3Origin) , "Aliases" :: Maybe (Aliases) , "Comment" :: (String) , "Logging" :: Maybe (StreamingLoggingConfig) , "TrustedSigners" :: (TrustedSigners) , "PriceClass" :: Maybe (PriceClass) , "Enabled" :: (Boolean) } ) -> StreamingDistributionConfig
newStreamingDistributionConfig' _CallerReference _Comment _Enabled _S3Origin _TrustedSigners customize = (StreamingDistributionConfig <<< customize) { "CallerReference": _CallerReference, "Comment": _Comment, "Enabled": _Enabled, "S3Origin": _S3Origin, "TrustedSigners": _TrustedSigners, "Aliases": Nothing, "Logging": Nothing, "PriceClass": Nothing }



-- | <p>A streaming distribution Configuration and a list of tags to be associated with the streaming distribution.</p>
newtype StreamingDistributionConfigWithTags = StreamingDistributionConfigWithTags 
  { "StreamingDistributionConfig" :: (StreamingDistributionConfig)
  , "Tags" :: (Tags)
  }
derive instance newtypeStreamingDistributionConfigWithTags :: Newtype StreamingDistributionConfigWithTags _
derive instance repGenericStreamingDistributionConfigWithTags :: Generic StreamingDistributionConfigWithTags _
instance showStreamingDistributionConfigWithTags :: Show StreamingDistributionConfigWithTags where show = genericShow
instance decodeStreamingDistributionConfigWithTags :: Decode StreamingDistributionConfigWithTags where decode = genericDecode options
instance encodeStreamingDistributionConfigWithTags :: Encode StreamingDistributionConfigWithTags where encode = genericEncode options

-- | Constructs StreamingDistributionConfigWithTags from required parameters
newStreamingDistributionConfigWithTags :: StreamingDistributionConfig -> Tags -> StreamingDistributionConfigWithTags
newStreamingDistributionConfigWithTags _StreamingDistributionConfig _Tags = StreamingDistributionConfigWithTags { "StreamingDistributionConfig": _StreamingDistributionConfig, "Tags": _Tags }

-- | Constructs StreamingDistributionConfigWithTags's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStreamingDistributionConfigWithTags' :: StreamingDistributionConfig -> Tags -> ( { "StreamingDistributionConfig" :: (StreamingDistributionConfig) , "Tags" :: (Tags) } -> {"StreamingDistributionConfig" :: (StreamingDistributionConfig) , "Tags" :: (Tags) } ) -> StreamingDistributionConfigWithTags
newStreamingDistributionConfigWithTags' _StreamingDistributionConfig _Tags customize = (StreamingDistributionConfigWithTags <<< customize) { "StreamingDistributionConfig": _StreamingDistributionConfig, "Tags": _Tags }



-- | <p>A streaming distribution list. </p>
newtype StreamingDistributionList = StreamingDistributionList 
  { "Marker" :: (String)
  , "NextMarker" :: Maybe (String)
  , "MaxItems" :: (Int)
  , "IsTruncated" :: (Boolean)
  , "Quantity" :: (Int)
  , "Items" :: Maybe (StreamingDistributionSummaryList)
  }
derive instance newtypeStreamingDistributionList :: Newtype StreamingDistributionList _
derive instance repGenericStreamingDistributionList :: Generic StreamingDistributionList _
instance showStreamingDistributionList :: Show StreamingDistributionList where show = genericShow
instance decodeStreamingDistributionList :: Decode StreamingDistributionList where decode = genericDecode options
instance encodeStreamingDistributionList :: Encode StreamingDistributionList where encode = genericEncode options

-- | Constructs StreamingDistributionList from required parameters
newStreamingDistributionList :: Boolean -> String -> Int -> Int -> StreamingDistributionList
newStreamingDistributionList _IsTruncated _Marker _MaxItems _Quantity = StreamingDistributionList { "IsTruncated": _IsTruncated, "Marker": _Marker, "MaxItems": _MaxItems, "Quantity": _Quantity, "Items": Nothing, "NextMarker": Nothing }

-- | Constructs StreamingDistributionList's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStreamingDistributionList' :: Boolean -> String -> Int -> Int -> ( { "Marker" :: (String) , "NextMarker" :: Maybe (String) , "MaxItems" :: (Int) , "IsTruncated" :: (Boolean) , "Quantity" :: (Int) , "Items" :: Maybe (StreamingDistributionSummaryList) } -> {"Marker" :: (String) , "NextMarker" :: Maybe (String) , "MaxItems" :: (Int) , "IsTruncated" :: (Boolean) , "Quantity" :: (Int) , "Items" :: Maybe (StreamingDistributionSummaryList) } ) -> StreamingDistributionList
newStreamingDistributionList' _IsTruncated _Marker _MaxItems _Quantity customize = (StreamingDistributionList <<< customize) { "IsTruncated": _IsTruncated, "Marker": _Marker, "MaxItems": _MaxItems, "Quantity": _Quantity, "Items": Nothing, "NextMarker": Nothing }



newtype StreamingDistributionNotDisabled = StreamingDistributionNotDisabled 
  { "Message" :: Maybe (String)
  }
derive instance newtypeStreamingDistributionNotDisabled :: Newtype StreamingDistributionNotDisabled _
derive instance repGenericStreamingDistributionNotDisabled :: Generic StreamingDistributionNotDisabled _
instance showStreamingDistributionNotDisabled :: Show StreamingDistributionNotDisabled where show = genericShow
instance decodeStreamingDistributionNotDisabled :: Decode StreamingDistributionNotDisabled where decode = genericDecode options
instance encodeStreamingDistributionNotDisabled :: Encode StreamingDistributionNotDisabled where encode = genericEncode options

-- | Constructs StreamingDistributionNotDisabled from required parameters
newStreamingDistributionNotDisabled :: StreamingDistributionNotDisabled
newStreamingDistributionNotDisabled  = StreamingDistributionNotDisabled { "Message": Nothing }

-- | Constructs StreamingDistributionNotDisabled's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStreamingDistributionNotDisabled' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> StreamingDistributionNotDisabled
newStreamingDistributionNotDisabled'  customize = (StreamingDistributionNotDisabled <<< customize) { "Message": Nothing }



-- | <p> A summary of the information for an Amazon CloudFront streaming distribution.</p>
newtype StreamingDistributionSummary = StreamingDistributionSummary 
  { "Id" :: (String)
  , "ARN" :: (String)
  , "Status" :: (String)
  , "LastModifiedTime" :: (Types.Timestamp)
  , "DomainName" :: (String)
  , "S3Origin" :: (S3Origin)
  , "Aliases" :: (Aliases)
  , "TrustedSigners" :: (TrustedSigners)
  , "Comment" :: (String)
  , "PriceClass" :: (PriceClass)
  , "Enabled" :: (Boolean)
  }
derive instance newtypeStreamingDistributionSummary :: Newtype StreamingDistributionSummary _
derive instance repGenericStreamingDistributionSummary :: Generic StreamingDistributionSummary _
instance showStreamingDistributionSummary :: Show StreamingDistributionSummary where show = genericShow
instance decodeStreamingDistributionSummary :: Decode StreamingDistributionSummary where decode = genericDecode options
instance encodeStreamingDistributionSummary :: Encode StreamingDistributionSummary where encode = genericEncode options

-- | Constructs StreamingDistributionSummary from required parameters
newStreamingDistributionSummary :: String -> Aliases -> String -> String -> Boolean -> String -> Types.Timestamp -> PriceClass -> S3Origin -> String -> TrustedSigners -> StreamingDistributionSummary
newStreamingDistributionSummary _ARN _Aliases _Comment _DomainName _Enabled _Id _LastModifiedTime _PriceClass _S3Origin _Status _TrustedSigners = StreamingDistributionSummary { "ARN": _ARN, "Aliases": _Aliases, "Comment": _Comment, "DomainName": _DomainName, "Enabled": _Enabled, "Id": _Id, "LastModifiedTime": _LastModifiedTime, "PriceClass": _PriceClass, "S3Origin": _S3Origin, "Status": _Status, "TrustedSigners": _TrustedSigners }

-- | Constructs StreamingDistributionSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStreamingDistributionSummary' :: String -> Aliases -> String -> String -> Boolean -> String -> Types.Timestamp -> PriceClass -> S3Origin -> String -> TrustedSigners -> ( { "Id" :: (String) , "ARN" :: (String) , "Status" :: (String) , "LastModifiedTime" :: (Types.Timestamp) , "DomainName" :: (String) , "S3Origin" :: (S3Origin) , "Aliases" :: (Aliases) , "TrustedSigners" :: (TrustedSigners) , "Comment" :: (String) , "PriceClass" :: (PriceClass) , "Enabled" :: (Boolean) } -> {"Id" :: (String) , "ARN" :: (String) , "Status" :: (String) , "LastModifiedTime" :: (Types.Timestamp) , "DomainName" :: (String) , "S3Origin" :: (S3Origin) , "Aliases" :: (Aliases) , "TrustedSigners" :: (TrustedSigners) , "Comment" :: (String) , "PriceClass" :: (PriceClass) , "Enabled" :: (Boolean) } ) -> StreamingDistributionSummary
newStreamingDistributionSummary' _ARN _Aliases _Comment _DomainName _Enabled _Id _LastModifiedTime _PriceClass _S3Origin _Status _TrustedSigners customize = (StreamingDistributionSummary <<< customize) { "ARN": _ARN, "Aliases": _Aliases, "Comment": _Comment, "DomainName": _DomainName, "Enabled": _Enabled, "Id": _Id, "LastModifiedTime": _LastModifiedTime, "PriceClass": _PriceClass, "S3Origin": _S3Origin, "Status": _Status, "TrustedSigners": _TrustedSigners }



newtype StreamingDistributionSummaryList = StreamingDistributionSummaryList (Array StreamingDistributionSummary)
derive instance newtypeStreamingDistributionSummaryList :: Newtype StreamingDistributionSummaryList _
derive instance repGenericStreamingDistributionSummaryList :: Generic StreamingDistributionSummaryList _
instance showStreamingDistributionSummaryList :: Show StreamingDistributionSummaryList where show = genericShow
instance decodeStreamingDistributionSummaryList :: Decode StreamingDistributionSummaryList where decode = genericDecode options
instance encodeStreamingDistributionSummaryList :: Encode StreamingDistributionSummaryList where encode = genericEncode options



-- | <p>A complex type that controls whether access logs are written for this streaming distribution.</p>
newtype StreamingLoggingConfig = StreamingLoggingConfig 
  { "Enabled" :: (Boolean)
  , "Bucket" :: (String)
  , "Prefix" :: (String)
  }
derive instance newtypeStreamingLoggingConfig :: Newtype StreamingLoggingConfig _
derive instance repGenericStreamingLoggingConfig :: Generic StreamingLoggingConfig _
instance showStreamingLoggingConfig :: Show StreamingLoggingConfig where show = genericShow
instance decodeStreamingLoggingConfig :: Decode StreamingLoggingConfig where decode = genericDecode options
instance encodeStreamingLoggingConfig :: Encode StreamingLoggingConfig where encode = genericEncode options

-- | Constructs StreamingLoggingConfig from required parameters
newStreamingLoggingConfig :: String -> Boolean -> String -> StreamingLoggingConfig
newStreamingLoggingConfig _Bucket _Enabled _Prefix = StreamingLoggingConfig { "Bucket": _Bucket, "Enabled": _Enabled, "Prefix": _Prefix }

-- | Constructs StreamingLoggingConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStreamingLoggingConfig' :: String -> Boolean -> String -> ( { "Enabled" :: (Boolean) , "Bucket" :: (String) , "Prefix" :: (String) } -> {"Enabled" :: (Boolean) , "Bucket" :: (String) , "Prefix" :: (String) } ) -> StreamingLoggingConfig
newStreamingLoggingConfig' _Bucket _Enabled _Prefix customize = (StreamingLoggingConfig <<< customize) { "Bucket": _Bucket, "Enabled": _Enabled, "Prefix": _Prefix }



-- | <p> A complex type that contains <code>Tag</code> key and <code>Tag</code> value.</p>
newtype Tag = Tag 
  { "Key" :: (TagKey)
  , "Value" :: Maybe (TagValue)
  }
derive instance newtypeTag :: Newtype Tag _
derive instance repGenericTag :: Generic Tag _
instance showTag :: Show Tag where show = genericShow
instance decodeTag :: Decode Tag where decode = genericDecode options
instance encodeTag :: Encode Tag where encode = genericEncode options

-- | Constructs Tag from required parameters
newTag :: TagKey -> Tag
newTag _Key = Tag { "Key": _Key, "Value": Nothing }

-- | Constructs Tag's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTag' :: TagKey -> ( { "Key" :: (TagKey) , "Value" :: Maybe (TagValue) } -> {"Key" :: (TagKey) , "Value" :: Maybe (TagValue) } ) -> Tag
newTag' _Key customize = (Tag <<< customize) { "Key": _Key, "Value": Nothing }



-- | <p> A string that contains <code>Tag</code> key.</p> <p>The string length should be between 1 and 128 characters. Valid characters include <code>a-z</code>, <code>A-Z</code>, <code>0-9</code>, space, and the special characters <code>_ - . : / = + @</code>.</p>
newtype TagKey = TagKey String
derive instance newtypeTagKey :: Newtype TagKey _
derive instance repGenericTagKey :: Generic TagKey _
instance showTagKey :: Show TagKey where show = genericShow
instance decodeTagKey :: Decode TagKey where decode = genericDecode options
instance encodeTagKey :: Encode TagKey where encode = genericEncode options



newtype TagKeyList = TagKeyList (Array TagKey)
derive instance newtypeTagKeyList :: Newtype TagKeyList _
derive instance repGenericTagKeyList :: Generic TagKeyList _
instance showTagKeyList :: Show TagKeyList where show = genericShow
instance decodeTagKeyList :: Decode TagKeyList where decode = genericDecode options
instance encodeTagKeyList :: Encode TagKeyList where encode = genericEncode options



-- | <p> A complex type that contains zero or more <code>Tag</code> elements.</p>
newtype TagKeys = TagKeys 
  { "Items" :: Maybe (TagKeyList)
  }
derive instance newtypeTagKeys :: Newtype TagKeys _
derive instance repGenericTagKeys :: Generic TagKeys _
instance showTagKeys :: Show TagKeys where show = genericShow
instance decodeTagKeys :: Decode TagKeys where decode = genericDecode options
instance encodeTagKeys :: Encode TagKeys where encode = genericEncode options

-- | Constructs TagKeys from required parameters
newTagKeys :: TagKeys
newTagKeys  = TagKeys { "Items": Nothing }

-- | Constructs TagKeys's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTagKeys' :: ( { "Items" :: Maybe (TagKeyList) } -> {"Items" :: Maybe (TagKeyList) } ) -> TagKeys
newTagKeys'  customize = (TagKeys <<< customize) { "Items": Nothing }



newtype TagList = TagList (Array Tag)
derive instance newtypeTagList :: Newtype TagList _
derive instance repGenericTagList :: Generic TagList _
instance showTagList :: Show TagList where show = genericShow
instance decodeTagList :: Decode TagList where decode = genericDecode options
instance encodeTagList :: Encode TagList where encode = genericEncode options



-- | <p> The request to add tags to a CloudFront resource.</p>
newtype TagResourceRequest = TagResourceRequest 
  { "Resource" :: (ResourceARN)
  , "Tags" :: (Tags)
  }
derive instance newtypeTagResourceRequest :: Newtype TagResourceRequest _
derive instance repGenericTagResourceRequest :: Generic TagResourceRequest _
instance showTagResourceRequest :: Show TagResourceRequest where show = genericShow
instance decodeTagResourceRequest :: Decode TagResourceRequest where decode = genericDecode options
instance encodeTagResourceRequest :: Encode TagResourceRequest where encode = genericEncode options

-- | Constructs TagResourceRequest from required parameters
newTagResourceRequest :: ResourceARN -> Tags -> TagResourceRequest
newTagResourceRequest _Resource _Tags = TagResourceRequest { "Resource": _Resource, "Tags": _Tags }

-- | Constructs TagResourceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTagResourceRequest' :: ResourceARN -> Tags -> ( { "Resource" :: (ResourceARN) , "Tags" :: (Tags) } -> {"Resource" :: (ResourceARN) , "Tags" :: (Tags) } ) -> TagResourceRequest
newTagResourceRequest' _Resource _Tags customize = (TagResourceRequest <<< customize) { "Resource": _Resource, "Tags": _Tags }



newtype TagValue = TagValue String
derive instance newtypeTagValue :: Newtype TagValue _
derive instance repGenericTagValue :: Generic TagValue _
instance showTagValue :: Show TagValue where show = genericShow
instance decodeTagValue :: Decode TagValue where decode = genericDecode options
instance encodeTagValue :: Encode TagValue where encode = genericEncode options



-- | <p> A complex type that contains zero or more <code>Tag</code> elements.</p>
newtype Tags = Tags 
  { "Items" :: Maybe (TagList)
  }
derive instance newtypeTags :: Newtype Tags _
derive instance repGenericTags :: Generic Tags _
instance showTags :: Show Tags where show = genericShow
instance decodeTags :: Decode Tags where decode = genericDecode options
instance encodeTags :: Encode Tags where encode = genericEncode options

-- | Constructs Tags from required parameters
newTags :: Tags
newTags  = Tags { "Items": Nothing }

-- | Constructs Tags's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTags' :: ( { "Items" :: Maybe (TagList) } -> {"Items" :: Maybe (TagList) } ) -> Tags
newTags'  customize = (Tags <<< customize) { "Items": Nothing }



-- | <p>You cannot create more cache behaviors for the distribution.</p>
newtype TooManyCacheBehaviors = TooManyCacheBehaviors 
  { "Message" :: Maybe (String)
  }
derive instance newtypeTooManyCacheBehaviors :: Newtype TooManyCacheBehaviors _
derive instance repGenericTooManyCacheBehaviors :: Generic TooManyCacheBehaviors _
instance showTooManyCacheBehaviors :: Show TooManyCacheBehaviors where show = genericShow
instance decodeTooManyCacheBehaviors :: Decode TooManyCacheBehaviors where decode = genericDecode options
instance encodeTooManyCacheBehaviors :: Encode TooManyCacheBehaviors where encode = genericEncode options

-- | Constructs TooManyCacheBehaviors from required parameters
newTooManyCacheBehaviors :: TooManyCacheBehaviors
newTooManyCacheBehaviors  = TooManyCacheBehaviors { "Message": Nothing }

-- | Constructs TooManyCacheBehaviors's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTooManyCacheBehaviors' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> TooManyCacheBehaviors
newTooManyCacheBehaviors'  customize = (TooManyCacheBehaviors <<< customize) { "Message": Nothing }



-- | <p>You cannot create anymore custom SSL/TLS certificates.</p>
newtype TooManyCertificates = TooManyCertificates 
  { "Message" :: Maybe (String)
  }
derive instance newtypeTooManyCertificates :: Newtype TooManyCertificates _
derive instance repGenericTooManyCertificates :: Generic TooManyCertificates _
instance showTooManyCertificates :: Show TooManyCertificates where show = genericShow
instance decodeTooManyCertificates :: Decode TooManyCertificates where decode = genericDecode options
instance encodeTooManyCertificates :: Encode TooManyCertificates where encode = genericEncode options

-- | Constructs TooManyCertificates from required parameters
newTooManyCertificates :: TooManyCertificates
newTooManyCertificates  = TooManyCertificates { "Message": Nothing }

-- | Constructs TooManyCertificates's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTooManyCertificates' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> TooManyCertificates
newTooManyCertificates'  customize = (TooManyCertificates <<< customize) { "Message": Nothing }



-- | <p>Processing your request would cause you to exceed the maximum number of origin access identities allowed.</p>
newtype TooManyCloudFrontOriginAccessIdentities = TooManyCloudFrontOriginAccessIdentities 
  { "Message" :: Maybe (String)
  }
derive instance newtypeTooManyCloudFrontOriginAccessIdentities :: Newtype TooManyCloudFrontOriginAccessIdentities _
derive instance repGenericTooManyCloudFrontOriginAccessIdentities :: Generic TooManyCloudFrontOriginAccessIdentities _
instance showTooManyCloudFrontOriginAccessIdentities :: Show TooManyCloudFrontOriginAccessIdentities where show = genericShow
instance decodeTooManyCloudFrontOriginAccessIdentities :: Decode TooManyCloudFrontOriginAccessIdentities where decode = genericDecode options
instance encodeTooManyCloudFrontOriginAccessIdentities :: Encode TooManyCloudFrontOriginAccessIdentities where encode = genericEncode options

-- | Constructs TooManyCloudFrontOriginAccessIdentities from required parameters
newTooManyCloudFrontOriginAccessIdentities :: TooManyCloudFrontOriginAccessIdentities
newTooManyCloudFrontOriginAccessIdentities  = TooManyCloudFrontOriginAccessIdentities { "Message": Nothing }

-- | Constructs TooManyCloudFrontOriginAccessIdentities's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTooManyCloudFrontOriginAccessIdentities' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> TooManyCloudFrontOriginAccessIdentities
newTooManyCloudFrontOriginAccessIdentities'  customize = (TooManyCloudFrontOriginAccessIdentities <<< customize) { "Message": Nothing }



-- | <p>Your request contains more cookie names in the whitelist than are allowed per cache behavior.</p>
newtype TooManyCookieNamesInWhiteList = TooManyCookieNamesInWhiteList 
  { "Message" :: Maybe (String)
  }
derive instance newtypeTooManyCookieNamesInWhiteList :: Newtype TooManyCookieNamesInWhiteList _
derive instance repGenericTooManyCookieNamesInWhiteList :: Generic TooManyCookieNamesInWhiteList _
instance showTooManyCookieNamesInWhiteList :: Show TooManyCookieNamesInWhiteList where show = genericShow
instance decodeTooManyCookieNamesInWhiteList :: Decode TooManyCookieNamesInWhiteList where decode = genericDecode options
instance encodeTooManyCookieNamesInWhiteList :: Encode TooManyCookieNamesInWhiteList where encode = genericEncode options

-- | Constructs TooManyCookieNamesInWhiteList from required parameters
newTooManyCookieNamesInWhiteList :: TooManyCookieNamesInWhiteList
newTooManyCookieNamesInWhiteList  = TooManyCookieNamesInWhiteList { "Message": Nothing }

-- | Constructs TooManyCookieNamesInWhiteList's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTooManyCookieNamesInWhiteList' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> TooManyCookieNamesInWhiteList
newTooManyCookieNamesInWhiteList'  customize = (TooManyCookieNamesInWhiteList <<< customize) { "Message": Nothing }



-- | <p>Your request contains more CNAMEs than are allowed per distribution.</p>
newtype TooManyDistributionCNAMEs = TooManyDistributionCNAMEs 
  { "Message" :: Maybe (String)
  }
derive instance newtypeTooManyDistributionCNAMEs :: Newtype TooManyDistributionCNAMEs _
derive instance repGenericTooManyDistributionCNAMEs :: Generic TooManyDistributionCNAMEs _
instance showTooManyDistributionCNAMEs :: Show TooManyDistributionCNAMEs where show = genericShow
instance decodeTooManyDistributionCNAMEs :: Decode TooManyDistributionCNAMEs where decode = genericDecode options
instance encodeTooManyDistributionCNAMEs :: Encode TooManyDistributionCNAMEs where encode = genericEncode options

-- | Constructs TooManyDistributionCNAMEs from required parameters
newTooManyDistributionCNAMEs :: TooManyDistributionCNAMEs
newTooManyDistributionCNAMEs  = TooManyDistributionCNAMEs { "Message": Nothing }

-- | Constructs TooManyDistributionCNAMEs's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTooManyDistributionCNAMEs' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> TooManyDistributionCNAMEs
newTooManyDistributionCNAMEs'  customize = (TooManyDistributionCNAMEs <<< customize) { "Message": Nothing }



-- | <p>Processing your request would cause you to exceed the maximum number of distributions allowed.</p>
newtype TooManyDistributions = TooManyDistributions 
  { "Message" :: Maybe (String)
  }
derive instance newtypeTooManyDistributions :: Newtype TooManyDistributions _
derive instance repGenericTooManyDistributions :: Generic TooManyDistributions _
instance showTooManyDistributions :: Show TooManyDistributions where show = genericShow
instance decodeTooManyDistributions :: Decode TooManyDistributions where decode = genericDecode options
instance encodeTooManyDistributions :: Encode TooManyDistributions where encode = genericEncode options

-- | Constructs TooManyDistributions from required parameters
newTooManyDistributions :: TooManyDistributions
newTooManyDistributions  = TooManyDistributions { "Message": Nothing }

-- | Constructs TooManyDistributions's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTooManyDistributions' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> TooManyDistributions
newTooManyDistributions'  customize = (TooManyDistributions <<< customize) { "Message": Nothing }



-- | <p>Processing your request would cause the maximum number of distributions with Lambda function associations per owner to be exceeded.</p>
newtype TooManyDistributionsWithLambdaAssociations = TooManyDistributionsWithLambdaAssociations 
  { "Message" :: Maybe (String)
  }
derive instance newtypeTooManyDistributionsWithLambdaAssociations :: Newtype TooManyDistributionsWithLambdaAssociations _
derive instance repGenericTooManyDistributionsWithLambdaAssociations :: Generic TooManyDistributionsWithLambdaAssociations _
instance showTooManyDistributionsWithLambdaAssociations :: Show TooManyDistributionsWithLambdaAssociations where show = genericShow
instance decodeTooManyDistributionsWithLambdaAssociations :: Decode TooManyDistributionsWithLambdaAssociations where decode = genericDecode options
instance encodeTooManyDistributionsWithLambdaAssociations :: Encode TooManyDistributionsWithLambdaAssociations where encode = genericEncode options

-- | Constructs TooManyDistributionsWithLambdaAssociations from required parameters
newTooManyDistributionsWithLambdaAssociations :: TooManyDistributionsWithLambdaAssociations
newTooManyDistributionsWithLambdaAssociations  = TooManyDistributionsWithLambdaAssociations { "Message": Nothing }

-- | Constructs TooManyDistributionsWithLambdaAssociations's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTooManyDistributionsWithLambdaAssociations' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> TooManyDistributionsWithLambdaAssociations
newTooManyDistributionsWithLambdaAssociations'  customize = (TooManyDistributionsWithLambdaAssociations <<< customize) { "Message": Nothing }



newtype TooManyHeadersInForwardedValues = TooManyHeadersInForwardedValues 
  { "Message" :: Maybe (String)
  }
derive instance newtypeTooManyHeadersInForwardedValues :: Newtype TooManyHeadersInForwardedValues _
derive instance repGenericTooManyHeadersInForwardedValues :: Generic TooManyHeadersInForwardedValues _
instance showTooManyHeadersInForwardedValues :: Show TooManyHeadersInForwardedValues where show = genericShow
instance decodeTooManyHeadersInForwardedValues :: Decode TooManyHeadersInForwardedValues where decode = genericDecode options
instance encodeTooManyHeadersInForwardedValues :: Encode TooManyHeadersInForwardedValues where encode = genericEncode options

-- | Constructs TooManyHeadersInForwardedValues from required parameters
newTooManyHeadersInForwardedValues :: TooManyHeadersInForwardedValues
newTooManyHeadersInForwardedValues  = TooManyHeadersInForwardedValues { "Message": Nothing }

-- | Constructs TooManyHeadersInForwardedValues's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTooManyHeadersInForwardedValues' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> TooManyHeadersInForwardedValues
newTooManyHeadersInForwardedValues'  customize = (TooManyHeadersInForwardedValues <<< customize) { "Message": Nothing }



-- | <p>You have exceeded the maximum number of allowable InProgress invalidation batch requests, or invalidation objects.</p>
newtype TooManyInvalidationsInProgress = TooManyInvalidationsInProgress 
  { "Message" :: Maybe (String)
  }
derive instance newtypeTooManyInvalidationsInProgress :: Newtype TooManyInvalidationsInProgress _
derive instance repGenericTooManyInvalidationsInProgress :: Generic TooManyInvalidationsInProgress _
instance showTooManyInvalidationsInProgress :: Show TooManyInvalidationsInProgress where show = genericShow
instance decodeTooManyInvalidationsInProgress :: Decode TooManyInvalidationsInProgress where decode = genericDecode options
instance encodeTooManyInvalidationsInProgress :: Encode TooManyInvalidationsInProgress where encode = genericEncode options

-- | Constructs TooManyInvalidationsInProgress from required parameters
newTooManyInvalidationsInProgress :: TooManyInvalidationsInProgress
newTooManyInvalidationsInProgress  = TooManyInvalidationsInProgress { "Message": Nothing }

-- | Constructs TooManyInvalidationsInProgress's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTooManyInvalidationsInProgress' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> TooManyInvalidationsInProgress
newTooManyInvalidationsInProgress'  customize = (TooManyInvalidationsInProgress <<< customize) { "Message": Nothing }



-- | <p>Your request contains more Lambda function associations than are allowed per distribution.</p>
newtype TooManyLambdaFunctionAssociations = TooManyLambdaFunctionAssociations 
  { "Message" :: Maybe (String)
  }
derive instance newtypeTooManyLambdaFunctionAssociations :: Newtype TooManyLambdaFunctionAssociations _
derive instance repGenericTooManyLambdaFunctionAssociations :: Generic TooManyLambdaFunctionAssociations _
instance showTooManyLambdaFunctionAssociations :: Show TooManyLambdaFunctionAssociations where show = genericShow
instance decodeTooManyLambdaFunctionAssociations :: Decode TooManyLambdaFunctionAssociations where decode = genericDecode options
instance encodeTooManyLambdaFunctionAssociations :: Encode TooManyLambdaFunctionAssociations where encode = genericEncode options

-- | Constructs TooManyLambdaFunctionAssociations from required parameters
newTooManyLambdaFunctionAssociations :: TooManyLambdaFunctionAssociations
newTooManyLambdaFunctionAssociations  = TooManyLambdaFunctionAssociations { "Message": Nothing }

-- | Constructs TooManyLambdaFunctionAssociations's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTooManyLambdaFunctionAssociations' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> TooManyLambdaFunctionAssociations
newTooManyLambdaFunctionAssociations'  customize = (TooManyLambdaFunctionAssociations <<< customize) { "Message": Nothing }



newtype TooManyOriginCustomHeaders = TooManyOriginCustomHeaders 
  { "Message" :: Maybe (String)
  }
derive instance newtypeTooManyOriginCustomHeaders :: Newtype TooManyOriginCustomHeaders _
derive instance repGenericTooManyOriginCustomHeaders :: Generic TooManyOriginCustomHeaders _
instance showTooManyOriginCustomHeaders :: Show TooManyOriginCustomHeaders where show = genericShow
instance decodeTooManyOriginCustomHeaders :: Decode TooManyOriginCustomHeaders where decode = genericDecode options
instance encodeTooManyOriginCustomHeaders :: Encode TooManyOriginCustomHeaders where encode = genericEncode options

-- | Constructs TooManyOriginCustomHeaders from required parameters
newTooManyOriginCustomHeaders :: TooManyOriginCustomHeaders
newTooManyOriginCustomHeaders  = TooManyOriginCustomHeaders { "Message": Nothing }

-- | Constructs TooManyOriginCustomHeaders's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTooManyOriginCustomHeaders' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> TooManyOriginCustomHeaders
newTooManyOriginCustomHeaders'  customize = (TooManyOriginCustomHeaders <<< customize) { "Message": Nothing }



-- | <p>You cannot create more origins for the distribution.</p>
newtype TooManyOrigins = TooManyOrigins 
  { "Message" :: Maybe (String)
  }
derive instance newtypeTooManyOrigins :: Newtype TooManyOrigins _
derive instance repGenericTooManyOrigins :: Generic TooManyOrigins _
instance showTooManyOrigins :: Show TooManyOrigins where show = genericShow
instance decodeTooManyOrigins :: Decode TooManyOrigins where decode = genericDecode options
instance encodeTooManyOrigins :: Encode TooManyOrigins where encode = genericEncode options

-- | Constructs TooManyOrigins from required parameters
newTooManyOrigins :: TooManyOrigins
newTooManyOrigins  = TooManyOrigins { "Message": Nothing }

-- | Constructs TooManyOrigins's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTooManyOrigins' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> TooManyOrigins
newTooManyOrigins'  customize = (TooManyOrigins <<< customize) { "Message": Nothing }



newtype TooManyQueryStringParameters = TooManyQueryStringParameters 
  { "Message" :: Maybe (String)
  }
derive instance newtypeTooManyQueryStringParameters :: Newtype TooManyQueryStringParameters _
derive instance repGenericTooManyQueryStringParameters :: Generic TooManyQueryStringParameters _
instance showTooManyQueryStringParameters :: Show TooManyQueryStringParameters where show = genericShow
instance decodeTooManyQueryStringParameters :: Decode TooManyQueryStringParameters where decode = genericDecode options
instance encodeTooManyQueryStringParameters :: Encode TooManyQueryStringParameters where encode = genericEncode options

-- | Constructs TooManyQueryStringParameters from required parameters
newTooManyQueryStringParameters :: TooManyQueryStringParameters
newTooManyQueryStringParameters  = TooManyQueryStringParameters { "Message": Nothing }

-- | Constructs TooManyQueryStringParameters's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTooManyQueryStringParameters' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> TooManyQueryStringParameters
newTooManyQueryStringParameters'  customize = (TooManyQueryStringParameters <<< customize) { "Message": Nothing }



newtype TooManyStreamingDistributionCNAMEs = TooManyStreamingDistributionCNAMEs 
  { "Message" :: Maybe (String)
  }
derive instance newtypeTooManyStreamingDistributionCNAMEs :: Newtype TooManyStreamingDistributionCNAMEs _
derive instance repGenericTooManyStreamingDistributionCNAMEs :: Generic TooManyStreamingDistributionCNAMEs _
instance showTooManyStreamingDistributionCNAMEs :: Show TooManyStreamingDistributionCNAMEs where show = genericShow
instance decodeTooManyStreamingDistributionCNAMEs :: Decode TooManyStreamingDistributionCNAMEs where decode = genericDecode options
instance encodeTooManyStreamingDistributionCNAMEs :: Encode TooManyStreamingDistributionCNAMEs where encode = genericEncode options

-- | Constructs TooManyStreamingDistributionCNAMEs from required parameters
newTooManyStreamingDistributionCNAMEs :: TooManyStreamingDistributionCNAMEs
newTooManyStreamingDistributionCNAMEs  = TooManyStreamingDistributionCNAMEs { "Message": Nothing }

-- | Constructs TooManyStreamingDistributionCNAMEs's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTooManyStreamingDistributionCNAMEs' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> TooManyStreamingDistributionCNAMEs
newTooManyStreamingDistributionCNAMEs'  customize = (TooManyStreamingDistributionCNAMEs <<< customize) { "Message": Nothing }



-- | <p>Processing your request would cause you to exceed the maximum number of streaming distributions allowed.</p>
newtype TooManyStreamingDistributions = TooManyStreamingDistributions 
  { "Message" :: Maybe (String)
  }
derive instance newtypeTooManyStreamingDistributions :: Newtype TooManyStreamingDistributions _
derive instance repGenericTooManyStreamingDistributions :: Generic TooManyStreamingDistributions _
instance showTooManyStreamingDistributions :: Show TooManyStreamingDistributions where show = genericShow
instance decodeTooManyStreamingDistributions :: Decode TooManyStreamingDistributions where decode = genericDecode options
instance encodeTooManyStreamingDistributions :: Encode TooManyStreamingDistributions where encode = genericEncode options

-- | Constructs TooManyStreamingDistributions from required parameters
newTooManyStreamingDistributions :: TooManyStreamingDistributions
newTooManyStreamingDistributions  = TooManyStreamingDistributions { "Message": Nothing }

-- | Constructs TooManyStreamingDistributions's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTooManyStreamingDistributions' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> TooManyStreamingDistributions
newTooManyStreamingDistributions'  customize = (TooManyStreamingDistributions <<< customize) { "Message": Nothing }



-- | <p>Your request contains more trusted signers than are allowed per distribution.</p>
newtype TooManyTrustedSigners = TooManyTrustedSigners 
  { "Message" :: Maybe (String)
  }
derive instance newtypeTooManyTrustedSigners :: Newtype TooManyTrustedSigners _
derive instance repGenericTooManyTrustedSigners :: Generic TooManyTrustedSigners _
instance showTooManyTrustedSigners :: Show TooManyTrustedSigners where show = genericShow
instance decodeTooManyTrustedSigners :: Decode TooManyTrustedSigners where decode = genericDecode options
instance encodeTooManyTrustedSigners :: Encode TooManyTrustedSigners where encode = genericEncode options

-- | Constructs TooManyTrustedSigners from required parameters
newTooManyTrustedSigners :: TooManyTrustedSigners
newTooManyTrustedSigners  = TooManyTrustedSigners { "Message": Nothing }

-- | Constructs TooManyTrustedSigners's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTooManyTrustedSigners' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> TooManyTrustedSigners
newTooManyTrustedSigners'  customize = (TooManyTrustedSigners <<< customize) { "Message": Nothing }



-- | <p>One or more of your trusted signers do not exist.</p>
newtype TrustedSignerDoesNotExist = TrustedSignerDoesNotExist 
  { "Message" :: Maybe (String)
  }
derive instance newtypeTrustedSignerDoesNotExist :: Newtype TrustedSignerDoesNotExist _
derive instance repGenericTrustedSignerDoesNotExist :: Generic TrustedSignerDoesNotExist _
instance showTrustedSignerDoesNotExist :: Show TrustedSignerDoesNotExist where show = genericShow
instance decodeTrustedSignerDoesNotExist :: Decode TrustedSignerDoesNotExist where decode = genericDecode options
instance encodeTrustedSignerDoesNotExist :: Encode TrustedSignerDoesNotExist where encode = genericEncode options

-- | Constructs TrustedSignerDoesNotExist from required parameters
newTrustedSignerDoesNotExist :: TrustedSignerDoesNotExist
newTrustedSignerDoesNotExist  = TrustedSignerDoesNotExist { "Message": Nothing }

-- | Constructs TrustedSignerDoesNotExist's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTrustedSignerDoesNotExist' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> TrustedSignerDoesNotExist
newTrustedSignerDoesNotExist'  customize = (TrustedSignerDoesNotExist <<< customize) { "Message": Nothing }



-- | <p>A complex type that specifies the AWS accounts, if any, that you want to allow to create signed URLs for private content.</p> <p>If you want to require signed URLs in requests for objects in the target origin that match the <code>PathPattern</code> for this cache behavior, specify <code>true</code> for <code>Enabled</code>, and specify the applicable values for <code>Quantity</code> and <code>Items</code>. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving Private Content through CloudFront</a> in the <i>Amazon Amazon CloudFront Developer Guide</i>.</p> <p>If you don't want to require signed URLs in requests for objects that match <code>PathPattern</code>, specify <code>false</code> for <code>Enabled</code> and <code>0</code> for <code>Quantity</code>. Omit <code>Items</code>.</p> <p>To add, change, or remove one or more trusted signers, change <code>Enabled</code> to <code>true</code> (if it's currently <code>false</code>), change <code>Quantity</code> as applicable, and specify all of the trusted signers that you want to include in the updated distribution.</p> <p>For more information about updating the distribution configuration, see <a>DistributionConfig</a> .</p>
newtype TrustedSigners = TrustedSigners 
  { "Enabled" :: (Boolean)
  , "Quantity" :: (Int)
  , "Items" :: Maybe (AwsAccountNumberList)
  }
derive instance newtypeTrustedSigners :: Newtype TrustedSigners _
derive instance repGenericTrustedSigners :: Generic TrustedSigners _
instance showTrustedSigners :: Show TrustedSigners where show = genericShow
instance decodeTrustedSigners :: Decode TrustedSigners where decode = genericDecode options
instance encodeTrustedSigners :: Encode TrustedSigners where encode = genericEncode options

-- | Constructs TrustedSigners from required parameters
newTrustedSigners :: Boolean -> Int -> TrustedSigners
newTrustedSigners _Enabled _Quantity = TrustedSigners { "Enabled": _Enabled, "Quantity": _Quantity, "Items": Nothing }

-- | Constructs TrustedSigners's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTrustedSigners' :: Boolean -> Int -> ( { "Enabled" :: (Boolean) , "Quantity" :: (Int) , "Items" :: Maybe (AwsAccountNumberList) } -> {"Enabled" :: (Boolean) , "Quantity" :: (Int) , "Items" :: Maybe (AwsAccountNumberList) } ) -> TrustedSigners
newTrustedSigners' _Enabled _Quantity customize = (TrustedSigners <<< customize) { "Enabled": _Enabled, "Quantity": _Quantity, "Items": Nothing }



-- | <p> The request to remove tags from a CloudFront resource.</p>
newtype UntagResourceRequest = UntagResourceRequest 
  { "Resource" :: (ResourceARN)
  , "TagKeys" :: (TagKeys)
  }
derive instance newtypeUntagResourceRequest :: Newtype UntagResourceRequest _
derive instance repGenericUntagResourceRequest :: Generic UntagResourceRequest _
instance showUntagResourceRequest :: Show UntagResourceRequest where show = genericShow
instance decodeUntagResourceRequest :: Decode UntagResourceRequest where decode = genericDecode options
instance encodeUntagResourceRequest :: Encode UntagResourceRequest where encode = genericEncode options

-- | Constructs UntagResourceRequest from required parameters
newUntagResourceRequest :: ResourceARN -> TagKeys -> UntagResourceRequest
newUntagResourceRequest _Resource _TagKeys = UntagResourceRequest { "Resource": _Resource, "TagKeys": _TagKeys }

-- | Constructs UntagResourceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUntagResourceRequest' :: ResourceARN -> TagKeys -> ( { "Resource" :: (ResourceARN) , "TagKeys" :: (TagKeys) } -> {"Resource" :: (ResourceARN) , "TagKeys" :: (TagKeys) } ) -> UntagResourceRequest
newUntagResourceRequest' _Resource _TagKeys customize = (UntagResourceRequest <<< customize) { "Resource": _Resource, "TagKeys": _TagKeys }



-- | <p>The request to update an origin access identity.</p>
newtype UpdateCloudFrontOriginAccessIdentityRequest = UpdateCloudFrontOriginAccessIdentityRequest 
  { "CloudFrontOriginAccessIdentityConfig" :: (CloudFrontOriginAccessIdentityConfig)
  , "Id" :: (String)
  , "IfMatch" :: Maybe (String)
  }
derive instance newtypeUpdateCloudFrontOriginAccessIdentityRequest :: Newtype UpdateCloudFrontOriginAccessIdentityRequest _
derive instance repGenericUpdateCloudFrontOriginAccessIdentityRequest :: Generic UpdateCloudFrontOriginAccessIdentityRequest _
instance showUpdateCloudFrontOriginAccessIdentityRequest :: Show UpdateCloudFrontOriginAccessIdentityRequest where show = genericShow
instance decodeUpdateCloudFrontOriginAccessIdentityRequest :: Decode UpdateCloudFrontOriginAccessIdentityRequest where decode = genericDecode options
instance encodeUpdateCloudFrontOriginAccessIdentityRequest :: Encode UpdateCloudFrontOriginAccessIdentityRequest where encode = genericEncode options

-- | Constructs UpdateCloudFrontOriginAccessIdentityRequest from required parameters
newUpdateCloudFrontOriginAccessIdentityRequest :: CloudFrontOriginAccessIdentityConfig -> String -> UpdateCloudFrontOriginAccessIdentityRequest
newUpdateCloudFrontOriginAccessIdentityRequest _CloudFrontOriginAccessIdentityConfig _Id = UpdateCloudFrontOriginAccessIdentityRequest { "CloudFrontOriginAccessIdentityConfig": _CloudFrontOriginAccessIdentityConfig, "Id": _Id, "IfMatch": Nothing }

-- | Constructs UpdateCloudFrontOriginAccessIdentityRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateCloudFrontOriginAccessIdentityRequest' :: CloudFrontOriginAccessIdentityConfig -> String -> ( { "CloudFrontOriginAccessIdentityConfig" :: (CloudFrontOriginAccessIdentityConfig) , "Id" :: (String) , "IfMatch" :: Maybe (String) } -> {"CloudFrontOriginAccessIdentityConfig" :: (CloudFrontOriginAccessIdentityConfig) , "Id" :: (String) , "IfMatch" :: Maybe (String) } ) -> UpdateCloudFrontOriginAccessIdentityRequest
newUpdateCloudFrontOriginAccessIdentityRequest' _CloudFrontOriginAccessIdentityConfig _Id customize = (UpdateCloudFrontOriginAccessIdentityRequest <<< customize) { "CloudFrontOriginAccessIdentityConfig": _CloudFrontOriginAccessIdentityConfig, "Id": _Id, "IfMatch": Nothing }



-- | <p>The returned result of the corresponding request.</p>
newtype UpdateCloudFrontOriginAccessIdentityResult = UpdateCloudFrontOriginAccessIdentityResult 
  { "CloudFrontOriginAccessIdentity" :: Maybe (CloudFrontOriginAccessIdentity)
  , "ETag" :: Maybe (String)
  }
derive instance newtypeUpdateCloudFrontOriginAccessIdentityResult :: Newtype UpdateCloudFrontOriginAccessIdentityResult _
derive instance repGenericUpdateCloudFrontOriginAccessIdentityResult :: Generic UpdateCloudFrontOriginAccessIdentityResult _
instance showUpdateCloudFrontOriginAccessIdentityResult :: Show UpdateCloudFrontOriginAccessIdentityResult where show = genericShow
instance decodeUpdateCloudFrontOriginAccessIdentityResult :: Decode UpdateCloudFrontOriginAccessIdentityResult where decode = genericDecode options
instance encodeUpdateCloudFrontOriginAccessIdentityResult :: Encode UpdateCloudFrontOriginAccessIdentityResult where encode = genericEncode options

-- | Constructs UpdateCloudFrontOriginAccessIdentityResult from required parameters
newUpdateCloudFrontOriginAccessIdentityResult :: UpdateCloudFrontOriginAccessIdentityResult
newUpdateCloudFrontOriginAccessIdentityResult  = UpdateCloudFrontOriginAccessIdentityResult { "CloudFrontOriginAccessIdentity": Nothing, "ETag": Nothing }

-- | Constructs UpdateCloudFrontOriginAccessIdentityResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateCloudFrontOriginAccessIdentityResult' :: ( { "CloudFrontOriginAccessIdentity" :: Maybe (CloudFrontOriginAccessIdentity) , "ETag" :: Maybe (String) } -> {"CloudFrontOriginAccessIdentity" :: Maybe (CloudFrontOriginAccessIdentity) , "ETag" :: Maybe (String) } ) -> UpdateCloudFrontOriginAccessIdentityResult
newUpdateCloudFrontOriginAccessIdentityResult'  customize = (UpdateCloudFrontOriginAccessIdentityResult <<< customize) { "CloudFrontOriginAccessIdentity": Nothing, "ETag": Nothing }



-- | <p>The request to update a distribution.</p>
newtype UpdateDistributionRequest = UpdateDistributionRequest 
  { "DistributionConfig" :: (DistributionConfig)
  , "Id" :: (String)
  , "IfMatch" :: Maybe (String)
  }
derive instance newtypeUpdateDistributionRequest :: Newtype UpdateDistributionRequest _
derive instance repGenericUpdateDistributionRequest :: Generic UpdateDistributionRequest _
instance showUpdateDistributionRequest :: Show UpdateDistributionRequest where show = genericShow
instance decodeUpdateDistributionRequest :: Decode UpdateDistributionRequest where decode = genericDecode options
instance encodeUpdateDistributionRequest :: Encode UpdateDistributionRequest where encode = genericEncode options

-- | Constructs UpdateDistributionRequest from required parameters
newUpdateDistributionRequest :: DistributionConfig -> String -> UpdateDistributionRequest
newUpdateDistributionRequest _DistributionConfig _Id = UpdateDistributionRequest { "DistributionConfig": _DistributionConfig, "Id": _Id, "IfMatch": Nothing }

-- | Constructs UpdateDistributionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateDistributionRequest' :: DistributionConfig -> String -> ( { "DistributionConfig" :: (DistributionConfig) , "Id" :: (String) , "IfMatch" :: Maybe (String) } -> {"DistributionConfig" :: (DistributionConfig) , "Id" :: (String) , "IfMatch" :: Maybe (String) } ) -> UpdateDistributionRequest
newUpdateDistributionRequest' _DistributionConfig _Id customize = (UpdateDistributionRequest <<< customize) { "DistributionConfig": _DistributionConfig, "Id": _Id, "IfMatch": Nothing }



-- | <p>The returned result of the corresponding request.</p>
newtype UpdateDistributionResult = UpdateDistributionResult 
  { "Distribution" :: Maybe (Distribution)
  , "ETag" :: Maybe (String)
  }
derive instance newtypeUpdateDistributionResult :: Newtype UpdateDistributionResult _
derive instance repGenericUpdateDistributionResult :: Generic UpdateDistributionResult _
instance showUpdateDistributionResult :: Show UpdateDistributionResult where show = genericShow
instance decodeUpdateDistributionResult :: Decode UpdateDistributionResult where decode = genericDecode options
instance encodeUpdateDistributionResult :: Encode UpdateDistributionResult where encode = genericEncode options

-- | Constructs UpdateDistributionResult from required parameters
newUpdateDistributionResult :: UpdateDistributionResult
newUpdateDistributionResult  = UpdateDistributionResult { "Distribution": Nothing, "ETag": Nothing }

-- | Constructs UpdateDistributionResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateDistributionResult' :: ( { "Distribution" :: Maybe (Distribution) , "ETag" :: Maybe (String) } -> {"Distribution" :: Maybe (Distribution) , "ETag" :: Maybe (String) } ) -> UpdateDistributionResult
newUpdateDistributionResult'  customize = (UpdateDistributionResult <<< customize) { "Distribution": Nothing, "ETag": Nothing }



-- | <p>The request to update a streaming distribution.</p>
newtype UpdateStreamingDistributionRequest = UpdateStreamingDistributionRequest 
  { "StreamingDistributionConfig" :: (StreamingDistributionConfig)
  , "Id" :: (String)
  , "IfMatch" :: Maybe (String)
  }
derive instance newtypeUpdateStreamingDistributionRequest :: Newtype UpdateStreamingDistributionRequest _
derive instance repGenericUpdateStreamingDistributionRequest :: Generic UpdateStreamingDistributionRequest _
instance showUpdateStreamingDistributionRequest :: Show UpdateStreamingDistributionRequest where show = genericShow
instance decodeUpdateStreamingDistributionRequest :: Decode UpdateStreamingDistributionRequest where decode = genericDecode options
instance encodeUpdateStreamingDistributionRequest :: Encode UpdateStreamingDistributionRequest where encode = genericEncode options

-- | Constructs UpdateStreamingDistributionRequest from required parameters
newUpdateStreamingDistributionRequest :: String -> StreamingDistributionConfig -> UpdateStreamingDistributionRequest
newUpdateStreamingDistributionRequest _Id _StreamingDistributionConfig = UpdateStreamingDistributionRequest { "Id": _Id, "StreamingDistributionConfig": _StreamingDistributionConfig, "IfMatch": Nothing }

-- | Constructs UpdateStreamingDistributionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateStreamingDistributionRequest' :: String -> StreamingDistributionConfig -> ( { "StreamingDistributionConfig" :: (StreamingDistributionConfig) , "Id" :: (String) , "IfMatch" :: Maybe (String) } -> {"StreamingDistributionConfig" :: (StreamingDistributionConfig) , "Id" :: (String) , "IfMatch" :: Maybe (String) } ) -> UpdateStreamingDistributionRequest
newUpdateStreamingDistributionRequest' _Id _StreamingDistributionConfig customize = (UpdateStreamingDistributionRequest <<< customize) { "Id": _Id, "StreamingDistributionConfig": _StreamingDistributionConfig, "IfMatch": Nothing }



-- | <p>The returned result of the corresponding request.</p>
newtype UpdateStreamingDistributionResult = UpdateStreamingDistributionResult 
  { "StreamingDistribution" :: Maybe (StreamingDistribution)
  , "ETag" :: Maybe (String)
  }
derive instance newtypeUpdateStreamingDistributionResult :: Newtype UpdateStreamingDistributionResult _
derive instance repGenericUpdateStreamingDistributionResult :: Generic UpdateStreamingDistributionResult _
instance showUpdateStreamingDistributionResult :: Show UpdateStreamingDistributionResult where show = genericShow
instance decodeUpdateStreamingDistributionResult :: Decode UpdateStreamingDistributionResult where decode = genericDecode options
instance encodeUpdateStreamingDistributionResult :: Encode UpdateStreamingDistributionResult where encode = genericEncode options

-- | Constructs UpdateStreamingDistributionResult from required parameters
newUpdateStreamingDistributionResult :: UpdateStreamingDistributionResult
newUpdateStreamingDistributionResult  = UpdateStreamingDistributionResult { "ETag": Nothing, "StreamingDistribution": Nothing }

-- | Constructs UpdateStreamingDistributionResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateStreamingDistributionResult' :: ( { "StreamingDistribution" :: Maybe (StreamingDistribution) , "ETag" :: Maybe (String) } -> {"StreamingDistribution" :: Maybe (StreamingDistribution) , "ETag" :: Maybe (String) } ) -> UpdateStreamingDistributionResult
newUpdateStreamingDistributionResult'  customize = (UpdateStreamingDistributionResult <<< customize) { "ETag": Nothing, "StreamingDistribution": Nothing }



-- | <p>A complex type that specifies the following:</p> <ul> <li> <p>Which SSL/TLS certificate to use when viewers request objects using HTTPS</p> </li> <li> <p>Whether you want CloudFront to use dedicated IP addresses or SNI when you're using alternate domain names in your object names</p> </li> <li> <p>The minimum protocol version that you want CloudFront to use when communicating with viewers</p> </li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/SecureConnections.html">Using an HTTPS Connection to Access Your Objects</a> in the <i>Amazon Amazon CloudFront Developer Guide</i>.</p>
newtype ViewerCertificate = ViewerCertificate 
  { "CloudFrontDefaultCertificate" :: Maybe (Boolean)
  , "IAMCertificateId" :: Maybe (String)
  , "ACMCertificateArn" :: Maybe (String)
  , "SSLSupportMethod" :: Maybe (SSLSupportMethod)
  , "MinimumProtocolVersion" :: Maybe (MinimumProtocolVersion)
  , "Certificate" :: Maybe (String)
  , "CertificateSource" :: Maybe (CertificateSource)
  }
derive instance newtypeViewerCertificate :: Newtype ViewerCertificate _
derive instance repGenericViewerCertificate :: Generic ViewerCertificate _
instance showViewerCertificate :: Show ViewerCertificate where show = genericShow
instance decodeViewerCertificate :: Decode ViewerCertificate where decode = genericDecode options
instance encodeViewerCertificate :: Encode ViewerCertificate where encode = genericEncode options

-- | Constructs ViewerCertificate from required parameters
newViewerCertificate :: ViewerCertificate
newViewerCertificate  = ViewerCertificate { "ACMCertificateArn": Nothing, "Certificate": Nothing, "CertificateSource": Nothing, "CloudFrontDefaultCertificate": Nothing, "IAMCertificateId": Nothing, "MinimumProtocolVersion": Nothing, "SSLSupportMethod": Nothing }

-- | Constructs ViewerCertificate's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newViewerCertificate' :: ( { "CloudFrontDefaultCertificate" :: Maybe (Boolean) , "IAMCertificateId" :: Maybe (String) , "ACMCertificateArn" :: Maybe (String) , "SSLSupportMethod" :: Maybe (SSLSupportMethod) , "MinimumProtocolVersion" :: Maybe (MinimumProtocolVersion) , "Certificate" :: Maybe (String) , "CertificateSource" :: Maybe (CertificateSource) } -> {"CloudFrontDefaultCertificate" :: Maybe (Boolean) , "IAMCertificateId" :: Maybe (String) , "ACMCertificateArn" :: Maybe (String) , "SSLSupportMethod" :: Maybe (SSLSupportMethod) , "MinimumProtocolVersion" :: Maybe (MinimumProtocolVersion) , "Certificate" :: Maybe (String) , "CertificateSource" :: Maybe (CertificateSource) } ) -> ViewerCertificate
newViewerCertificate'  customize = (ViewerCertificate <<< customize) { "ACMCertificateArn": Nothing, "Certificate": Nothing, "CertificateSource": Nothing, "CloudFrontDefaultCertificate": Nothing, "IAMCertificateId": Nothing, "MinimumProtocolVersion": Nothing, "SSLSupportMethod": Nothing }



newtype ViewerProtocolPolicy = ViewerProtocolPolicy String
derive instance newtypeViewerProtocolPolicy :: Newtype ViewerProtocolPolicy _
derive instance repGenericViewerProtocolPolicy :: Generic ViewerProtocolPolicy _
instance showViewerProtocolPolicy :: Show ViewerProtocolPolicy where show = genericShow
instance decodeViewerProtocolPolicy :: Decode ViewerProtocolPolicy where decode = genericDecode options
instance encodeViewerProtocolPolicy :: Encode ViewerProtocolPolicy where encode = genericEncode options

