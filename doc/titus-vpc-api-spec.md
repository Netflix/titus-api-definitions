# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [src/main/proto/netflix/titus/titus_vpc_api.proto](#src/main/proto/netflix/titus/titus_vpc_api.proto)
    - [AddressLocationV2](#com.netflix.titus.AddressLocationV2)
    - [AddressSearchParameter](#com.netflix.titus.AddressSearchParameter)
    - [AllocateAddressRequest](#com.netflix.titus.AllocateAddressRequest)
    - [AllocateAddressResponse](#com.netflix.titus.AllocateAddressResponse)
    - [AllocateStaticIPAddressRequest](#com.netflix.titus.AllocateStaticIPAddressRequest)
    - [AllocateStaticIPAddressRequest.TagsEntry](#com.netflix.titus.AllocateStaticIPAddressRequest.TagsEntry)
    - [AllocateStaticIPAddressResponse](#com.netflix.titus.AllocateStaticIPAddressResponse)
    - [CreateTagRequest](#com.netflix.titus.CreateTagRequest)
    - [CreateTagResponse](#com.netflix.titus.CreateTagResponse)
    - [DeleteTagRequest](#com.netflix.titus.DeleteTagRequest)
    - [DeleteTagResponse](#com.netflix.titus.DeleteTagResponse)
    - [GetAllocationRequest](#com.netflix.titus.GetAllocationRequest)
    - [GetAllocationResponse](#com.netflix.titus.GetAllocationResponse)
    - [GetBranchToTrunkENIMappingRequest](#com.netflix.titus.GetBranchToTrunkENIMappingRequest)
    - [GetBranchToTrunkENIMappingResponse](#com.netflix.titus.GetBranchToTrunkENIMappingResponse)
    - [GetBranchToTrunkENIMappingResponse.BranchENIMappingEntry](#com.netflix.titus.GetBranchToTrunkENIMappingResponse.BranchENIMappingEntry)
    - [GetStaticIPAddressRequest](#com.netflix.titus.GetStaticIPAddressRequest)
    - [GetStaticIPAddressResponse](#com.netflix.titus.GetStaticIPAddressResponse)
    - [GetStaticIPAddressesRequest](#com.netflix.titus.GetStaticIPAddressesRequest)
    - [GetStaticIPAddressesResponse](#com.netflix.titus.GetStaticIPAddressesResponse)
    - [ParametersValidationRequest](#com.netflix.titus.ParametersValidationRequest)
    - [ParametersValidationResponse](#com.netflix.titus.ParametersValidationResponse)
    - [ParametersValidationResponse.AccountIdUnsupported](#com.netflix.titus.ParametersValidationResponse.AccountIdUnsupported)
    - [ParametersValidationResponse.SecurityGroupNotFound](#com.netflix.titus.ParametersValidationResponse.SecurityGroupNotFound)
    - [ParametersValidationResponse.SubnetDoesNotMatchAccountId](#com.netflix.titus.ParametersValidationResponse.SubnetDoesNotMatchAccountId)
    - [ParametersValidationResponse.SubnetNotFound](#com.netflix.titus.ParametersValidationResponse.SubnetNotFound)
    - [ParametersValidationResponse.SubnetsTooDiverse](#com.netflix.titus.ParametersValidationResponse.SubnetsTooDiverse)
    - [ParametersValidationResponse.UnknownFailure](#com.netflix.titus.ParametersValidationResponse.UnknownFailure)
    - [ParametersValidationResponse.ValidationFailure](#com.netflix.titus.ParametersValidationResponse.ValidationFailure)
    - [SetPoolRequest](#com.netflix.titus.SetPoolRequest)
    - [SetPoolResponse](#com.netflix.titus.SetPoolResponse)
    - [StaticIPAddress](#com.netflix.titus.StaticIPAddress)
    - [StaticIPAddress.TagsEntry](#com.netflix.titus.StaticIPAddress.TagsEntry)
    - [UpdateTagRequest](#com.netflix.titus.UpdateTagRequest)
    - [UpdateTagResponse](#com.netflix.titus.UpdateTagResponse)
    - [ValidationRequest](#com.netflix.titus.ValidationRequest)
    - [ValidationResponse](#com.netflix.titus.ValidationResponse)
  
    - [Family](#com.netflix.titus.Family)
  
    - [IPService](#com.netflix.titus.IPService)
    - [TitusAgentVPCInformationService](#com.netflix.titus.TitusAgentVPCInformationService)
    - [UserIPService](#com.netflix.titus.UserIPService)
    - [ValidatorIPService](#com.netflix.titus.ValidatorIPService)
  
- [Scalar Value Types](#scalar-value-types)



<a name="src/main/proto/netflix/titus/titus_vpc_api.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## src/main/proto/netflix/titus/titus_vpc_api.proto



<a name="com.netflix.titus.AddressLocationV2"></a>

### AddressLocationV2



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| accountId | [string](#string) |  |  |
| availabilityZone | [string](#string) |  |  |
| availabilityZoneId | [string](#string) |  |  |
| vpcId | [string](#string) |  |  |
| subnetId | [string](#string) |  |  |






<a name="com.netflix.titus.AddressSearchParameter"></a>

### AddressSearchParameter



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| address | [string](#string) |  | Either an IPv4 or IPv6 address. If it&#39;s an IPv4 address, then subnetId or vpcId have to be specified |
| empty | [google.protobuf.Empty](#google.protobuf.Empty) |  | This can be empty if address is a v6 address, otherwise it must be specified |
| subnetId | [string](#string) |  |  |
| vpcId | [string](#string) |  |  |






<a name="com.netflix.titus.AllocateAddressRequest"></a>

### AllocateAddressRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| addressAllocation | [AddressAllocation](#com.netflix.titus.AddressAllocation) |  |  |
| family | [Family](#com.netflix.titus.Family) |  |  |
| accountId | [string](#string) |  |  |






<a name="com.netflix.titus.AllocateAddressResponse"></a>

### AllocateAddressResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| signedAddressAllocation | [SignedAddressAllocation](#com.netflix.titus.SignedAddressAllocation) |  |  |






<a name="com.netflix.titus.AllocateStaticIPAddressRequest"></a>

### AllocateStaticIPAddressRequest
V2 API


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| subnetId | [string](#string) |  | Required (The subnet where to allocate the address) |
| uuid | [string](#string) |  | Optional. If specified, and an ID with that already exists, it will return an error. This allows for idempotent requests. |
| pool | [string](#string) |  | Optional. Pool is an indexed column that can be used to select static IPs by. |
| tags | [AllocateStaticIPAddressRequest.TagsEntry](#com.netflix.titus.AllocateStaticIPAddressRequest.TagsEntry) | repeated | Optional |






<a name="com.netflix.titus.AllocateStaticIPAddressRequest.TagsEntry"></a>

### AllocateStaticIPAddressRequest.TagsEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="com.netflix.titus.AllocateStaticIPAddressResponse"></a>

### AllocateStaticIPAddressResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| staticIPAddress | [StaticIPAddress](#com.netflix.titus.StaticIPAddress) |  |  |






<a name="com.netflix.titus.CreateTagRequest"></a>

### CreateTagRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| uuid | [string](#string) |  |  |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |
| upsert | [bool](#bool) |  | If upsert is false, and the tag exists, this call will fail. |






<a name="com.netflix.titus.CreateTagResponse"></a>

### CreateTagResponse







<a name="com.netflix.titus.DeleteTagRequest"></a>

### DeleteTagRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| uuid | [string](#string) |  |  |
| key | [string](#string) |  |  |






<a name="com.netflix.titus.DeleteTagResponse"></a>

### DeleteTagResponse







<a name="com.netflix.titus.GetAllocationRequest"></a>

### GetAllocationRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| address | [string](#string) |  |  |
| uuid | [string](#string) |  |  |






<a name="com.netflix.titus.GetAllocationResponse"></a>

### GetAllocationResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| addressAllocation | [AddressAllocation](#com.netflix.titus.AddressAllocation) |  |  |
| signedAddressAllocation | [SignedAddressAllocation](#com.netflix.titus.SignedAddressAllocation) |  |  |






<a name="com.netflix.titus.GetBranchToTrunkENIMappingRequest"></a>

### GetBranchToTrunkENIMappingRequest







<a name="com.netflix.titus.GetBranchToTrunkENIMappingResponse"></a>

### GetBranchToTrunkENIMappingResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| branchENIMapping | [GetBranchToTrunkENIMappingResponse.BranchENIMappingEntry](#com.netflix.titus.GetBranchToTrunkENIMappingResponse.BranchENIMappingEntry) | repeated | This map is branchENI =&gt; trunkENI |






<a name="com.netflix.titus.GetBranchToTrunkENIMappingResponse.BranchENIMappingEntry"></a>

### GetBranchToTrunkENIMappingResponse.BranchENIMappingEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="com.netflix.titus.GetStaticIPAddressRequest"></a>

### GetStaticIPAddressRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| uuid | [string](#string) |  |  |
| addressSearchParameter | [AddressSearchParameter](#com.netflix.titus.AddressSearchParameter) |  |  |






<a name="com.netflix.titus.GetStaticIPAddressResponse"></a>

### GetStaticIPAddressResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| staticIPAddress | [StaticIPAddress](#com.netflix.titus.StaticIPAddress) |  |  |






<a name="com.netflix.titus.GetStaticIPAddressesRequest"></a>

### GetStaticIPAddressesRequest
This is really only meant to be used by (the) control plane(s)


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| pool | [string](#string) |  |  |
| addresses | [StaticIPAddressIDs](#com.netflix.titus.StaticIPAddressIDs) |  |  |






<a name="com.netflix.titus.GetStaticIPAddressesResponse"></a>

### GetStaticIPAddressesResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| staticIPAddresses | [StaticIPAddress](#com.netflix.titus.StaticIPAddress) | repeated |  |






<a name="com.netflix.titus.ParametersValidationRequest"></a>

### ParametersValidationRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| accountId | [string](#string) |  |  |
| subnets | [string](#string) | repeated |  |
| securityGroups | [string](#string) | repeated |  |






<a name="com.netflix.titus.ParametersValidationResponse"></a>

### ParametersValidationResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| validationFailures | [ParametersValidationResponse.ValidationFailure](#com.netflix.titus.ParametersValidationResponse.ValidationFailure) | repeated | If the following structure does not contain any failure elements, it implies a validation success |






<a name="com.netflix.titus.ParametersValidationResponse.AccountIdUnsupported"></a>

### ParametersValidationResponse.AccountIdUnsupported



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| accountId | [string](#string) |  |  |






<a name="com.netflix.titus.ParametersValidationResponse.SecurityGroupNotFound"></a>

### ParametersValidationResponse.SecurityGroupNotFound



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| securityGroup | [string](#string) |  |  |






<a name="com.netflix.titus.ParametersValidationResponse.SubnetDoesNotMatchAccountId"></a>

### ParametersValidationResponse.SubnetDoesNotMatchAccountId



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| subnetId | [string](#string) |  |  |






<a name="com.netflix.titus.ParametersValidationResponse.SubnetNotFound"></a>

### ParametersValidationResponse.SubnetNotFound



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| subnetId | [string](#string) |  |  |






<a name="com.netflix.titus.ParametersValidationResponse.SubnetsTooDiverse"></a>

### ParametersValidationResponse.SubnetsTooDiverse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| subnetId | [string](#string) |  |  |






<a name="com.netflix.titus.ParametersValidationResponse.UnknownFailure"></a>

### ParametersValidationResponse.UnknownFailure



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| failure | [string](#string) |  |  |






<a name="com.netflix.titus.ParametersValidationResponse.ValidationFailure"></a>

### ParametersValidationResponse.ValidationFailure



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| unknownFailure | [ParametersValidationResponse.UnknownFailure](#com.netflix.titus.ParametersValidationResponse.UnknownFailure) |  |  |
| subnetNotFound | [ParametersValidationResponse.SubnetNotFound](#com.netflix.titus.ParametersValidationResponse.SubnetNotFound) |  |  |
| securityGroupNotFound | [ParametersValidationResponse.SecurityGroupNotFound](#com.netflix.titus.ParametersValidationResponse.SecurityGroupNotFound) |  |  |
| accountIdUnsupported | [ParametersValidationResponse.AccountIdUnsupported](#com.netflix.titus.ParametersValidationResponse.AccountIdUnsupported) |  |  |
| subnetDoesNotMatchAccountId | [ParametersValidationResponse.SubnetDoesNotMatchAccountId](#com.netflix.titus.ParametersValidationResponse.SubnetDoesNotMatchAccountId) |  |  |
| subnetsTooDiverse | [ParametersValidationResponse.SubnetsTooDiverse](#com.netflix.titus.ParametersValidationResponse.SubnetsTooDiverse) |  |  |






<a name="com.netflix.titus.SetPoolRequest"></a>

### SetPoolRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| uuid | [string](#string) |  |  |
| pool | [string](#string) |  | If Pool is unset, it&#39;s equivalent of removing it from that pool |






<a name="com.netflix.titus.SetPoolResponse"></a>

### SetPoolResponse







<a name="com.netflix.titus.StaticIPAddress"></a>

### StaticIPAddress



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| uuid | [string](#string) |  |  |
| ipv4Address | [string](#string) |  |  |
| ipv6Address | [string](#string) |  |  |
| pool | [string](#string) |  |  |
| tags | [StaticIPAddress.TagsEntry](#com.netflix.titus.StaticIPAddress.TagsEntry) | repeated |  |
| addressLocation | [AddressLocationV2](#com.netflix.titus.AddressLocationV2) |  |  |






<a name="com.netflix.titus.StaticIPAddress.TagsEntry"></a>

### StaticIPAddress.TagsEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="com.netflix.titus.UpdateTagRequest"></a>

### UpdateTagRequest
If the tag is unset, then do not set it


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| uuid | [string](#string) |  |  |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="com.netflix.titus.UpdateTagResponse"></a>

### UpdateTagResponse







<a name="com.netflix.titus.ValidationRequest"></a>

### ValidationRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| signedAddressAllocation | [SignedAddressAllocation](#com.netflix.titus.SignedAddressAllocation) |  |  |






<a name="com.netflix.titus.ValidationResponse"></a>

### ValidationResponse






 


<a name="com.netflix.titus.Family"></a>

### Family


| Name | Number | Description |
| ---- | ------ | ----------- |
| FAMILY_DEFAULT | 0 | Default should never really be used, but we&#39;re required to have one due to protobuf |
| FAMILY_V4 | 1 |  |
| FAMILY_V6 | 2 |  |


 

 


<a name="com.netflix.titus.IPService"></a>

### IPService


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| AllocateStaticIPAddress | [AllocateStaticIPAddressRequest](#com.netflix.titus.AllocateStaticIPAddressRequest) | [AllocateStaticIPAddressResponse](#com.netflix.titus.AllocateStaticIPAddressResponse) |  |
| SetPool | [SetPoolRequest](#com.netflix.titus.SetPoolRequest) | [SetPoolResponse](#com.netflix.titus.SetPoolResponse) |  |
| CreateTag | [CreateTagRequest](#com.netflix.titus.CreateTagRequest) | [CreateTagResponse](#com.netflix.titus.CreateTagResponse) |  |
| DeleteTag | [CreateTagRequest](#com.netflix.titus.CreateTagRequest) | [DeleteTagResponse](#com.netflix.titus.DeleteTagResponse) |  |
| UpdateTag | [UpdateTagRequest](#com.netflix.titus.UpdateTagRequest) | [UpdateTagResponse](#com.netflix.titus.UpdateTagResponse) |  |
| GetStaticIPAddress | [GetStaticIPAddressRequest](#com.netflix.titus.GetStaticIPAddressRequest) | [GetStaticIPAddressResponse](#com.netflix.titus.GetStaticIPAddressResponse) |  |
| GetStaticIPAddresses | [GetStaticIPAddressesRequest](#com.netflix.titus.GetStaticIPAddressesRequest) | [GetStaticIPAddressesResponse](#com.netflix.titus.GetStaticIPAddressesResponse) |  |


<a name="com.netflix.titus.TitusAgentVPCInformationService"></a>

### TitusAgentVPCInformationService


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| ListBranchToTrunkENIMapping | [GetBranchToTrunkENIMappingRequest](#com.netflix.titus.GetBranchToTrunkENIMappingRequest) | [GetBranchToTrunkENIMappingResponse](#com.netflix.titus.GetBranchToTrunkENIMappingResponse) |  |


<a name="com.netflix.titus.UserIPService"></a>

### UserIPService


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| AllocateAddress | [AllocateAddressRequest](#com.netflix.titus.AllocateAddressRequest) | [AllocateAddressResponse](#com.netflix.titus.AllocateAddressResponse) | Static IP Address flow |
| GetAllocation | [GetAllocationRequest](#com.netflix.titus.GetAllocationRequest) | [GetAllocationResponse](#com.netflix.titus.GetAllocationResponse) |  |


<a name="com.netflix.titus.ValidatorIPService"></a>

### ValidatorIPService


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| ValidateAllocation | [ValidationRequest](#com.netflix.titus.ValidationRequest) | [ValidationResponse](#com.netflix.titus.ValidationResponse) |  |
| ValidateAllocationParameters | [ParametersValidationRequest](#com.netflix.titus.ParametersValidationRequest) | [ParametersValidationResponse](#com.netflix.titus.ParametersValidationResponse) |  |

 



## Scalar Value Types

| .proto Type | Notes | C++ | Java | Python | Go | C# | PHP | Ruby |
| ----------- | ----- | --- | ---- | ------ | -- | -- | --- | ---- |
| <a name="double" /> double |  | double | double | float | float64 | double | float | Float |
| <a name="float" /> float |  | float | float | float | float32 | float | float | Float |
| <a name="int32" /> int32 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint32 instead. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="int64" /> int64 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint64 instead. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="uint32" /> uint32 | Uses variable-length encoding. | uint32 | int | int/long | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="uint64" /> uint64 | Uses variable-length encoding. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum or Fixnum (as required) |
| <a name="sint32" /> sint32 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int32s. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sint64" /> sint64 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int64s. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="fixed32" /> fixed32 | Always four bytes. More efficient than uint32 if values are often greater than 2^28. | uint32 | int | int | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="fixed64" /> fixed64 | Always eight bytes. More efficient than uint64 if values are often greater than 2^56. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum |
| <a name="sfixed32" /> sfixed32 | Always four bytes. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sfixed64" /> sfixed64 | Always eight bytes. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="bool" /> bool |  | bool | boolean | boolean | bool | bool | boolean | TrueClass/FalseClass |
| <a name="string" /> string | A string must always contain UTF-8 encoded or 7-bit ASCII text. | string | String | str/unicode | string | string | string | String (UTF-8) |
| <a name="bytes" /> bytes | May contain any arbitrary sequence of bytes. | string | ByteString | str | []byte | ByteString | string | String (ASCII-8BIT) |

