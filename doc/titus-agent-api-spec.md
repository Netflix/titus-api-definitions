# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [src/main/proto/netflix/titus/agent.proto](#src/main/proto/netflix/titus/agent.proto)
    - [CertificateSignature](#messages.CertificateSignature)
    - [CertificateStringSignature](#messages.CertificateStringSignature)
    - [ContainerInfo](#messages.ContainerInfo)
    - [ContainerInfo.Capabilities](#messages.ContainerInfo.Capabilities)
    - [ContainerInfo.EfsConfigInfo](#messages.ContainerInfo.EfsConfigInfo)
    - [ContainerInfo.EnvironmentVariable](#messages.ContainerInfo.EnvironmentVariable)
    - [ContainerInfo.MetatronCreds](#messages.ContainerInfo.MetatronCreds)
    - [ContainerInfo.NetworkConfigInfo](#messages.ContainerInfo.NetworkConfigInfo)
    - [ContainerInfo.PassthroughAttributesEntry](#messages.ContainerInfo.PassthroughAttributesEntry)
    - [ContainerInfo.Process](#messages.ContainerInfo.Process)
    - [ContainerInfo.S3LogLocation](#messages.ContainerInfo.S3LogLocation)
    - [ContainerInfo.TitusProvidedEnvEntry](#messages.ContainerInfo.TitusProvidedEnvEntry)
    - [ContainerInfo.UserProvidedEnvEntry](#messages.ContainerInfo.UserProvidedEnvEntry)
    - [RunningContainerInfo](#messages.RunningContainerInfo)
    - [StateUpdate](#messages.StateUpdate)
    - [StateUpdates](#messages.StateUpdates)
    - [TaskIdentity](#messages.TaskIdentity)
    - [TaskIdentityDocument](#messages.TaskIdentityDocument)
    - [TaskIdentityStringDocument](#messages.TaskIdentityStringDocument)
    - [TaskInfo](#messages.TaskInfo)
    - [TaskInfo.EnvironmentVariable](#messages.TaskInfo.EnvironmentVariable)
    - [TaskPodIdentity](#messages.TaskPodIdentity)
    - [TaskPodIdentityDocument](#messages.TaskPodIdentityDocument)
    - [TaskStatusData](#messages.TaskStatusData)
  
    - [ContainerInfo.Capabilities.Capability](#messages.ContainerInfo.Capabilities.Capability)
    - [ContainerInfo.EfsConfigInfo.MountPerms](#messages.ContainerInfo.EfsConfigInfo.MountPerms)
    - [ContainerInfo.ImagePullPolicy](#messages.ContainerInfo.ImagePullPolicy)
    - [ContainerInfo.SnapshotPolicy](#messages.ContainerInfo.SnapshotPolicy)
    - [SignatureAlgorithm](#messages.SignatureAlgorithm)
    - [TaskInfo.Status](#messages.TaskInfo.Status)
  
- [Scalar Value Types](#scalar-value-types)



<a name="src/main/proto/netflix/titus/agent.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## src/main/proto/netflix/titus/agent.proto



<a name="messages.CertificateSignature"></a>

### CertificateSignature



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| signature | [bytes](#bytes) | optional | (Required) Raw signature produced from signing input bytes using the private key of the titus agent’s certificate. |
| algorithm | [SignatureAlgorithm](#messages.SignatureAlgorithm) | optional | (Required) Signature algorithm used (e.g. SHA512withRSAandMGF1) |
| certChain | [bytes](#bytes) | repeated | (Required) The agent’s public certificate in DER form, followed by its trust chain. |






<a name="messages.CertificateStringSignature"></a>

### CertificateStringSignature
Version of CertificateSignature that encodes all byte[]s as human-readable strings


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| signature | [string](#string) | optional | (Required) Base64 signature produced from signing input bytes using the private key of the titus agent’s certificate. |
| algorithm | [SignatureAlgorithm](#messages.SignatureAlgorithm) | optional | (Required) Signature algorithm used (e.g. SHA512withRSAandMGF1) |
| certChain | [string](#string) | repeated | (Required) The agent’s public certificate in DER form, followed by its trust chain. |






<a name="messages.ContainerInfo"></a>

### ContainerInfo



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| imageName | [string](#string) | optional |  |
| command | [string](#string) | optional | deprecated. replaced by entrypointCmd. |
| containerPorts | [string](#string) | optional |  |
| version | [string](#string) | optional |  Default: latest |
| environmentVariable | [ContainerInfo.EnvironmentVariable](#messages.ContainerInfo.EnvironmentVariable) | repeated | deprecated: use userProvidedEnv and titusProvidedEnv instead |
| jobId | [string](#string) | optional |  |
| logUploadRegexp | [string](#string) | optional |  |
| maxHealthFailures | [uint32](#uint32) | optional |  |
| healthCheckCmd | [string](#string) | repeated |  |
| snapshotPolicy | [ContainerInfo.SnapshotPolicy](#messages.ContainerInfo.SnapshotPolicy) | optional |  |
| entrypointCmd | [string](#string) | repeated | deprecated: Use process instead |
| entrypointStr | [string](#string) | optional | deprecated: Use process instead |
| appName | [string](#string) | optional |  |
| jobGroupStack | [string](#string) | optional |  |
| jobGroupDetail | [string](#string) | optional |  |
| iamProfile | [string](#string) | optional |  |
| networkConfigInfo | [ContainerInfo.NetworkConfigInfo](#messages.ContainerInfo.NetworkConfigInfo) | optional |  |
| jobGroupSequence | [string](#string) | optional |  |
| numGpus | [uint32](#uint32) | optional | TODO(Sargun): Remove, and use the Mesos resource info instead |
| efsConfigInfo | [ContainerInfo.EfsConfigInfo](#messages.ContainerInfo.EfsConfigInfo) | repeated |  |
| capabilities | [ContainerInfo.Capabilities](#messages.ContainerInfo.Capabilities) | optional |  |
| metatronCreds | [ContainerInfo.MetatronCreds](#messages.ContainerInfo.MetatronCreds) | optional |  |
| userProvidedEnv | [ContainerInfo.UserProvidedEnvEntry](#messages.ContainerInfo.UserProvidedEnvEntry) | repeated |  |
| titusProvidedEnv | [ContainerInfo.TitusProvidedEnvEntry](#messages.ContainerInfo.TitusProvidedEnvEntry) | repeated |  |
| imageDigest | [string](#string) | optional | imageDigest has precedence over version |
| allowNetworkBursting | [bool](#bool) | optional |  |
| killWaitSeconds | [uint32](#uint32) | optional | Number of seconds to wait before killing the container otherwise, it will use the dockerd default |
| ignoreLaunchGuard | [bool](#bool) | optional | If the engine that is using this agent supports the killinitiated state, this should be set to true. That way, when this container is killed, as well as when it is launched, the launchguard will be ignored. |
| allowNestedContainers | [bool](#bool) | optional | Should we allow this container to run privileged enough to run internal container runtimes? |
| fullyQualifiedImage | [string](#string) | optional | The image name with the registry |
| allowCpuBursting | [bool](#bool) | optional | Should this container be allowed to excceed its CPU cap? |
| batch | [bool](#bool) | optional | Should this be tagged sched_batch? Does it prefer bigger chunks of CPU, less frequently? |
| s3LogLocations | [ContainerInfo.S3LogLocation](#messages.ContainerInfo.S3LogLocation) | repeated |  |
| oomScoreAdj | [int32](#int32) | optional | This influences the value of oom_score_adj for the PID 1 (tini) of the container

The value of /proc/&lt;pid&gt;/oom_score_adj is added to the badness score before it is used to determine which task to kill. Acceptable values range from -1000 (OOM_SCORE_ADJ_MIN) to &#43;1000 (OOM_SCORE_ADJ_MAX). This allows userspace to polarize the preference for oom killing either by always preferring a certain task or completely disabling it. The lowest possible value, -1000, is equivalent to disabling oom killing entirely for that task since it will always report a badness score of 0.

If this value is unset, it will be set to &#43;1000 as default. |
| imagePullPolicy | [ContainerInfo.ImagePullPolicy](#messages.ContainerInfo.ImagePullPolicy) | optional | If omitted, Always is the default |
| passthroughAttributes | [ContainerInfo.PassthroughAttributesEntry](#messages.ContainerInfo.PassthroughAttributesEntry) | repeated | passthrough attributes are an arbitrary set of key / value pairs that are passed from API to executor |
| process | [ContainerInfo.Process](#messages.ContainerInfo.Process) | optional | Process to be executed inside the container |
| runState | [RunningContainerInfo](#messages.RunningContainerInfo) | optional | Used internally by the agent to store information about a running container |
| shmSizeMB | [uint32](#uint32) | optional | (Optional) Amount of shared memory to allocate (must be &lt;= memoryMB) |
| signedAddressAllocation | [com.netflix.titus.SignedAddressAllocation](#com.netflix.titus.SignedAddressAllocation) | optional | (Optional) IP address allocation for the task |
| jobAcceptedTimestampMs | [uint64](#uint64) | optional | Timestamp in epoch millis of when the task&#39;s job was Accepted |






<a name="messages.ContainerInfo.Capabilities"></a>

### ContainerInfo.Capabilities



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| add | [ContainerInfo.Capabilities.Capability](#messages.ContainerInfo.Capabilities.Capability) | repeated |  |
| drop | [ContainerInfo.Capabilities.Capability](#messages.ContainerInfo.Capabilities.Capability) | repeated |  |






<a name="messages.ContainerInfo.EfsConfigInfo"></a>

### ContainerInfo.EfsConfigInfo



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| efsFsId | [string](#string) | required |  |
| mountPoint | [string](#string) | required |  |
| mntPerms | [ContainerInfo.EfsConfigInfo.MountPerms](#messages.ContainerInfo.EfsConfigInfo.MountPerms) | optional | Defaults to first enum value |
| efsFsRelativeMntPoint | [string](#string) | optional |  |






<a name="messages.ContainerInfo.EnvironmentVariable"></a>

### ContainerInfo.EnvironmentVariable
deprecated: use userProvidedEnv and titusProvidedEnv instead


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) | optional |  |
| value | [string](#string) | optional |  |






<a name="messages.ContainerInfo.MetatronCreds"></a>

### ContainerInfo.MetatronCreds



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| appMetadata | [string](#string) | required | An encoded description of the task&#39;s job metadata |
| metadataSig | [string](#string) | required | An encoded description of the metadata signature |






<a name="messages.ContainerInfo.NetworkConfigInfo"></a>

### ContainerInfo.NetworkConfigInfo



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| eniLablel | [string](#string) | required | deprecated: use eniLabel instead |
| eniLabel | [string](#string) | optional | this should be required, but it was added later (typo fix) and is optional for backwards compatibility |
| securityGroups | [string](#string) | repeated |  |
| bandwidthLimitMbps | [uint32](#uint32) | optional | In Mbps |






<a name="messages.ContainerInfo.PassthroughAttributesEntry"></a>

### ContainerInfo.PassthroughAttributesEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) | optional |  |
| value | [string](#string) | optional |  |






<a name="messages.ContainerInfo.Process"></a>

### ContainerInfo.Process
entrypoint and command follow Docker semantics, and can be used to override what is baked into the Docker image:
https://docs.docker.com/engine/reference/builder/#understand-how-cmd-and-entrypoint-interact

Both CMD and ENTRYPOINT baked into the image can be explicitly cleared with a single empty value (i.e.: `[&#34;&#34;]`).


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| entrypoint | [string](#string) | repeated | when set, will override ENTRYPOINT baked into the image, and cause CMD from the image to be ignored |
| command | [string](#string) | repeated | when set, will override CMD baked into the image |






<a name="messages.ContainerInfo.S3LogLocation"></a>

### ContainerInfo.S3LogLocation
The s3 log location used when uploading logs


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| bucket | [string](#string) | required | The bucket to use for all uploads |
| prefix | [string](#string) | required | The prefix to use for all object keys. e.g. foo/bar |






<a name="messages.ContainerInfo.TitusProvidedEnvEntry"></a>

### ContainerInfo.TitusProvidedEnvEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) | optional |  |
| value | [string](#string) | optional |  |






<a name="messages.ContainerInfo.UserProvidedEnvEntry"></a>

### ContainerInfo.UserProvidedEnvEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) | optional |  |
| value | [string](#string) | optional |  |






<a name="messages.RunningContainerInfo"></a>

### RunningContainerInfo
Agent-only structure: stores container info for a currently running container


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| hostName | [string](#string) | optional | Container hostname (not necessarily the same as task ID) |
| taskId | [string](#string) | optional | Container task ID |
| launchTimeUnixSec | [uint64](#uint64) | optional | Container launch timestamp, in Unix epoch seconds |






<a name="messages.StateUpdate"></a>

### StateUpdate



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) | optional |  |
| state | [string](#string) | optional |  |
| message | [string](#string) | optional |  |
| timestamp | [string](#string) | optional |  |






<a name="messages.StateUpdates"></a>

### StateUpdates



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| stateUpdate | [StateUpdate](#messages.StateUpdate) | repeated |  |






<a name="messages.TaskIdentity"></a>

### TaskIdentity
For the identity client to query the metadata server to confirm the
currently running task&#39;s identity


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| task | [TaskInfo](#messages.TaskInfo) | optional | (Required) Current state of the task |
| container | [ContainerInfo](#messages.ContainerInfo) | optional | (Required) Container details, including: - app name, stack, detail - image name, digest, label - environment variables - command, entrypoint - metadata string and signature from caller |
| unixTimestampSec | [uint64](#uint64) | optional | (Required) Timestamp, in Unix epoch seconds, when request was made. |
| ipv4Address | [string](#string) | optional | (Required) IP address of container |
| ipv6Address | [string](#string) | optional | (Optional) IPv6 address of container |






<a name="messages.TaskIdentityDocument"></a>

### TaskIdentityDocument



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| identity | [bytes](#bytes) | optional | (Required) Serialized form of a TaskIdentity protobuf. |
| signature | [CertificateSignature](#messages.CertificateSignature) | optional | (Required) Signature produced by signing identity bytes. |






<a name="messages.TaskIdentityStringDocument"></a>

### TaskIdentityStringDocument
Version of TaskIdentityDocument that encodes all byte[]s as human-readable strings


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| identity | [TaskIdentity](#messages.TaskIdentity) | optional | (Required) Task Identity |
| signature | [CertificateStringSignature](#messages.CertificateStringSignature) | optional | (Required) Signature produced by signing identity bytes. |






<a name="messages.TaskInfo"></a>

### TaskInfo



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| containerId | [string](#string) | optional |  |
| taskId | [string](#string) | optional |  |
| hostName | [string](#string) | optional |  |
| slaveId | [string](#string) | optional |  |
| status | [TaskInfo.Status](#messages.TaskInfo.Status) | optional |  |
| message | [string](#string) | optional |  |
| environmentVariable | [TaskInfo.EnvironmentVariable](#messages.TaskInfo.EnvironmentVariable) | repeated |  |






<a name="messages.TaskInfo.EnvironmentVariable"></a>

### TaskInfo.EnvironmentVariable



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) | optional |  |
| value | [string](#string) | optional |  |






<a name="messages.TaskPodIdentity"></a>

### TaskPodIdentity
For the identity client to query the metadata server to confirm the
currently running task&#39;s identity based on the whole pod


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| taskInfo | [TaskInfo](#messages.TaskInfo) | required | (Required) Current state of the task |
| pod | [bytes](#bytes) | required | (Required) Pod details in bytes! &gt; For the same reason, we do not recommend embedding these proto objects within your own proto definitions. &gt; It is better to store Kubernetes objects as byte arrays, in the wire format, which is self-describing. &gt; This permits you to use either JSON or binary (proto) wire formats without code changes. &gt; It will be difficult for you to operate on both Custom Resources and built-in types otherwise. |
| requestTimestamp | [google.protobuf.Timestamp](#google.protobuf.Timestamp) | required | (Required) Timestamp, in Unix epoch seconds, when request was made. |
| ipv4Address | [string](#string) | optional | (Optional) IP address of container |
| ipv6Address | [string](#string) | optional | (Optional) IPv6 address of container |






<a name="messages.TaskPodIdentityDocument"></a>

### TaskPodIdentityDocument



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| podIdentity | [bytes](#bytes) | optional | (Required) Serialized form of a TaskIdentity protobuf. |
| signature | [CertificateSignature](#messages.CertificateSignature) | optional | (Required) Signature produced by signing identity bytes. |






<a name="messages.TaskStatusData"></a>

### TaskStatusData



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| timestamp | [int64](#int64) | required |  |





 


<a name="messages.ContainerInfo.Capabilities.Capability"></a>

### ContainerInfo.Capabilities.Capability
Taken from include/uapi/linux/capability.h
#define _LINUX_CAPABILITY_VERSION_3  0x20080522

| Name | Number | Description |
| ---- | ------ | ----------- |
| CHOWN | 0 |  |
| DAC_OVERRIDE | 1 |  |
| DAC_READ_SEARCH | 2 |  |
| FOWNER | 3 |  |
| FSETID | 4 |  |
| KILL | 5 |  |
| SETGID | 6 |  |
| SETUID | 7 |  |
| SETPCAP | 8 |  |
| LINUX_IMMUTABLE | 9 |  |
| NET_BIND_SERVICE | 10 |  |
| NET_BROADCAST | 11 |  |
| NET_ADMIN | 12 |  |
| NET_RAW | 13 |  |
| IPC_LOCK | 14 |  |
| IPC_OWNER | 15 |  |
| SYS_MODULE | 16 |  |
| SYS_RAWIO | 17 |  |
| SYS_CHROOT | 18 |  |
| SYS_PTRACE | 19 |  |
| SYS_PACCT | 20 |  |
| SYS_ADMIN | 21 |  |
| SYS_BOOT | 22 |  |
| SYS_NICE | 23 |  |
| SYS_RESOURCE | 24 |  |
| SYS_TIME | 25 |  |
| SYS_TTY_CONFIG | 26 |  |
| MKNOD | 27 |  |
| LEASE | 28 |  |
| AUDIT_WRITE | 29 |  |
| AUDIT_CONTROL | 30 |  |
| SETFCAP | 31 |  |
| MAC_OVERRIDE | 32 |  |
| MAC_ADMIN | 33 |  |
| SYSLOG | 34 |  |
| WAKE_ALARM | 35 |  |
| BLOCK_SUSPEND | 36 |  |
| AUDIT_READ | 37 |  |



<a name="messages.ContainerInfo.EfsConfigInfo.MountPerms"></a>

### ContainerInfo.EfsConfigInfo.MountPerms


| Name | Number | Description |
| ---- | ------ | ----------- |
| RW | 1 |  |
| RO | 2 |  |
| WO | 3 |  |



<a name="messages.ContainerInfo.ImagePullPolicy"></a>

### ContainerInfo.ImagePullPolicy
Borrowed from Kubernetes

| Name | Number | Description |
| ---- | ------ | ----------- |
| Always | 0 | Always pull the tag / digest |
| IfNotPresent | 1 | Only pull if we don&#39;t have an image with that given tag / digest (guarantees freshness, as it requires digest) |
| IfLabelPresent | 2 | Only pull if we don&#39;t have an image with that given tag |



<a name="messages.ContainerInfo.SnapshotPolicy"></a>

### ContainerInfo.SnapshotPolicy


| Name | Number | Description |
| ---- | ------ | ----------- |
| NEVER | 0 |  |
| ERROR_ONLY | 1 |  |
| SUCCESS_ONLY | 2 |  |
| ALWAYS | 3 |  |



<a name="messages.SignatureAlgorithm"></a>

### SignatureAlgorithm


| Name | Number | Description |
| ---- | ------ | ----------- |
| SHA256withRSAandMGF1 | 0 |  |
| SHA384withRSAandMGF1 | 1 |  |
| SHA512withRSAandMGF1 | 2 |  |
| SHA256withECDSA | 3 |  |
| SHA384withECDSA | 4 |  |
| SHA512withECDSA | 5 |  |



<a name="messages.TaskInfo.Status"></a>

### TaskInfo.Status


| Name | Number | Description |
| ---- | ------ | ----------- |
| RUNNING | 0 |  |
| FAILED | 1 |  |
| STOPPED | 2 |  |


 

 

 



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

