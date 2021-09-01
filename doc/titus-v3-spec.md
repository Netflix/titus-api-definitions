# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [src/main/proto/netflix/titus/titus_job_api.proto](#src/main/proto/netflix/titus/titus_job_api.proto)
    - [BatchJobSpec](#com.netflix.titus.BatchJobSpec)
    - [Capacity](#com.netflix.titus.Capacity)
    - [Constraints](#com.netflix.titus.Constraints)
    - [Constraints.ConstraintsEntry](#com.netflix.titus.Constraints.ConstraintsEntry)
    - [Container](#com.netflix.titus.Container)
    - [Container.AttributesEntry](#com.netflix.titus.Container.AttributesEntry)
    - [Container.EnvEntry](#com.netflix.titus.Container.EnvEntry)
    - [ContainerResources](#com.netflix.titus.ContainerResources)
    - [ContainerResources.EfsMount](#com.netflix.titus.ContainerResources.EfsMount)
    - [Image](#com.netflix.titus.Image)
    - [Job](#com.netflix.titus.Job)
    - [JobAttributesDeleteRequest](#com.netflix.titus.JobAttributesDeleteRequest)
    - [JobAttributesUpdate](#com.netflix.titus.JobAttributesUpdate)
    - [JobAttributesUpdate.AttributesEntry](#com.netflix.titus.JobAttributesUpdate.AttributesEntry)
    - [JobCapacityUpdate](#com.netflix.titus.JobCapacityUpdate)
    - [JobCapacityUpdateWithOptionalAttributes](#com.netflix.titus.JobCapacityUpdateWithOptionalAttributes)
    - [JobCapacityWithOptionalAttributes](#com.netflix.titus.JobCapacityWithOptionalAttributes)
    - [JobChangeNotification](#com.netflix.titus.JobChangeNotification)
    - [JobChangeNotification.JobUpdate](#com.netflix.titus.JobChangeNotification.JobUpdate)
    - [JobChangeNotification.SnapshotEnd](#com.netflix.titus.JobChangeNotification.SnapshotEnd)
    - [JobChangeNotification.TaskUpdate](#com.netflix.titus.JobChangeNotification.TaskUpdate)
    - [JobDataRecord](#com.netflix.titus.JobDataRecord)
    - [JobDescriptor](#com.netflix.titus.JobDescriptor)
    - [JobDescriptor.AttributesEntry](#com.netflix.titus.JobDescriptor.AttributesEntry)
    - [JobDisruptionBudget](#com.netflix.titus.JobDisruptionBudget)
    - [JobDisruptionBudget.AvailabilityPercentageLimit](#com.netflix.titus.JobDisruptionBudget.AvailabilityPercentageLimit)
    - [JobDisruptionBudget.RatePerInterval](#com.netflix.titus.JobDisruptionBudget.RatePerInterval)
    - [JobDisruptionBudget.RatePercentagePerHour](#com.netflix.titus.JobDisruptionBudget.RatePercentagePerHour)
    - [JobDisruptionBudget.RatePercentagePerInterval](#com.netflix.titus.JobDisruptionBudget.RatePercentagePerInterval)
    - [JobDisruptionBudget.RateUnlimited](#com.netflix.titus.JobDisruptionBudget.RateUnlimited)
    - [JobDisruptionBudget.RelocationLimit](#com.netflix.titus.JobDisruptionBudget.RelocationLimit)
    - [JobDisruptionBudget.SelfManaged](#com.netflix.titus.JobDisruptionBudget.SelfManaged)
    - [JobDisruptionBudget.UnhealthyTasksLimit](#com.netflix.titus.JobDisruptionBudget.UnhealthyTasksLimit)
    - [JobDisruptionBudgetUpdate](#com.netflix.titus.JobDisruptionBudgetUpdate)
    - [JobGroupInfo](#com.netflix.titus.JobGroupInfo)
    - [JobId](#com.netflix.titus.JobId)
    - [JobIds](#com.netflix.titus.JobIds)
    - [JobProcessesUpdate](#com.netflix.titus.JobProcessesUpdate)
    - [JobQuery](#com.netflix.titus.JobQuery)
    - [JobQuery.FilteringCriteriaEntry](#com.netflix.titus.JobQuery.FilteringCriteriaEntry)
    - [JobQueryResult](#com.netflix.titus.JobQueryResult)
    - [JobStatus](#com.netflix.titus.JobStatus)
    - [JobStatusUpdate](#com.netflix.titus.JobStatusUpdate)
    - [LogLocation](#com.netflix.titus.LogLocation)
    - [LogLocation.LiveStream](#com.netflix.titus.LogLocation.LiveStream)
    - [LogLocation.S3](#com.netflix.titus.LogLocation.S3)
    - [LogLocation.UI](#com.netflix.titus.LogLocation.UI)
    - [MigrationDetails](#com.netflix.titus.MigrationDetails)
    - [MigrationPolicy](#com.netflix.titus.MigrationPolicy)
    - [MigrationPolicy.SelfManaged](#com.netflix.titus.MigrationPolicy.SelfManaged)
    - [MigrationPolicy.SystemDefault](#com.netflix.titus.MigrationPolicy.SystemDefault)
    - [NetworkConfiguration](#com.netflix.titus.NetworkConfiguration)
    - [ObserveJobsQuery](#com.netflix.titus.ObserveJobsQuery)
    - [ObserveJobsQuery.FilteringCriteriaEntry](#com.netflix.titus.ObserveJobsQuery.FilteringCriteriaEntry)
    - [Owner](#com.netflix.titus.Owner)
    - [SecurityProfile](#com.netflix.titus.SecurityProfile)
    - [SecurityProfile.AttributesEntry](#com.netflix.titus.SecurityProfile.AttributesEntry)
    - [ServiceJobSpec](#com.netflix.titus.ServiceJobSpec)
    - [ServiceJobSpec.ServiceJobProcesses](#com.netflix.titus.ServiceJobSpec.ServiceJobProcesses)
    - [Task](#com.netflix.titus.Task)
    - [Task.AttributesEntry](#com.netflix.titus.Task.AttributesEntry)
    - [Task.TaskContextEntry](#com.netflix.titus.Task.TaskContextEntry)
    - [TaskAttributesDeleteRequest](#com.netflix.titus.TaskAttributesDeleteRequest)
    - [TaskAttributesUpdate](#com.netflix.titus.TaskAttributesUpdate)
    - [TaskAttributesUpdate.AttributesEntry](#com.netflix.titus.TaskAttributesUpdate.AttributesEntry)
    - [TaskDataRecord](#com.netflix.titus.TaskDataRecord)
    - [TaskId](#com.netflix.titus.TaskId)
    - [TaskIds](#com.netflix.titus.TaskIds)
    - [TaskKillRequest](#com.netflix.titus.TaskKillRequest)
    - [TaskMoveRequest](#com.netflix.titus.TaskMoveRequest)
    - [TaskQuery](#com.netflix.titus.TaskQuery)
    - [TaskQuery.FilteringCriteriaEntry](#com.netflix.titus.TaskQuery.FilteringCriteriaEntry)
    - [TaskQueryResult](#com.netflix.titus.TaskQueryResult)
    - [TaskStatus](#com.netflix.titus.TaskStatus)
    - [TaskStatus.ContainerState](#com.netflix.titus.TaskStatus.ContainerState)
  
    - [JobStatus.JobState](#com.netflix.titus.JobStatus.JobState)
    - [NetworkConfiguration.NetworkMode](#com.netflix.titus.NetworkConfiguration.NetworkMode)
    - [TaskStatus.ContainerState.ContainerHealth](#com.netflix.titus.TaskStatus.ContainerState.ContainerHealth)
    - [TaskStatus.TaskState](#com.netflix.titus.TaskStatus.TaskState)
  
    - [JobManagementService](#com.netflix.titus.JobManagementService)
  
- [Scalar Value Types](#scalar-value-types)



<a name="src/main/proto/netflix/titus/titus_job_api.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## src/main/proto/netflix/titus/titus_job_api.proto



<a name="com.netflix.titus.BatchJobSpec"></a>

### BatchJobSpec
Batch job specification.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| size | [uint32](#uint32) |  | (Required) Number of tasks to run (&gt; 0). |
| runtimeLimitSec | [uint64](#uint64) |  | (Required) Maximum amount of time in seconds that the job&#39;s task is allowed to run. The timer is started once the task transitions to the &#39;RUNNING&#39; state. If a task terminates with an error and is restarted, the timer starts again from 0. |
| retryPolicy | [RetryPolicy](#com.netflix.titus.RetryPolicy) |  | (Required) Task rescheduling policy in case of failure. |
| retryOnRuntimeLimit | [bool](#bool) |  | true when the task should be restarted after being terminated due to runtime limit. |






<a name="com.netflix.titus.Capacity"></a>

### Capacity
This data structure is associated with a service job and specifies the
number of tasks to run (desired).
At any point in time, the condition min &lt;= desired &lt;= max must hold true. The
desired state may be changed by a user, but also may be changed as a result
of an auto-scaling action.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| min | [uint32](#uint32) |  | (Required) Minimum number of tasks to run (min &gt;= 0) |
| max | [uint32](#uint32) |  | (Required) Maximum number of tasks that can be run (max &gt;= desired) |
| desired | [uint32](#uint32) |  | (Required) Desired number of tasks to run (min &lt;= desired &lt;= max) |






<a name="com.netflix.titus.Constraints"></a>

### Constraints
Task placement constraints. Currently supported constraint types are:
* zoneBalance - distributes tasks of a job evenly among the availability
zones
* uniqueHost - runs each task of a job on a different agent
* exclusiveHost - ensures that an agent is exclusively assigned to a given
job


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| constraints | [Constraints.ConstraintsEntry](#com.netflix.titus.Constraints.ConstraintsEntry) | repeated | (Optional) A map of constraint name/values. If multiple constraints are given, all must be met (logical &#39;and&#39;). |
| expression | [string](#string) |  | Not supported yet. (Optional) An expression combining multiple constraints. For example &#39;zoneBalance AND serverGroup == &#34;mySG&#34;&#39;. Avalilable operators: &lt;, &lt;=, ==, &gt;, &gt;=, in, like, AND, OR |






<a name="com.netflix.titus.Constraints.ConstraintsEntry"></a>

### Constraints.ConstraintsEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="com.netflix.titus.Container"></a>

### Container
Container descriptor.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| resources | [ContainerResources](#com.netflix.titus.ContainerResources) |  | (Required) Container resources. |
| securityProfile | [SecurityProfile](#com.netflix.titus.SecurityProfile) |  | (Required) Container security profile: IAM role, security groups, container roles. |
| image | [Image](#com.netflix.titus.Image) |  | (Required) Image reference. |
| attributes | [Container.AttributesEntry](#com.netflix.titus.Container.AttributesEntry) | repeated | (Optional) Arbitrary set of key/value pairs. Key names starting with &#39;titus.&#39; are reserved by Titus. |
| entryPoint | [string](#string) | repeated | (Optional) Override the entry point of the image. If set, the command baked into the image (if any) is always ignored. Interactions between the entry point and command are the same as specified by Docker: https://docs.docker.com/engine/reference/builder/#understand-how-cmd-and-entrypoint-interact

 To clear (unset) the entry point of the image, pass a single empty string value: [&#34;&#34;] |
| command | [string](#string) | repeated | (Optional) Additional parameters for the entry point defined either here or provided in the container image. To clear (unset) the command of the image, pass a single empty string value: [&#34;&#34;] |
| env | [Container.EnvEntry](#com.netflix.titus.Container.EnvEntry) | repeated | (Optional) A collection of system environment variables passed to the container. |
| softConstraints | [Constraints](#com.netflix.titus.Constraints) |  | (Optional) Constraints that Titus will prefer to fulfill but are not required. |
| hardConstraints | [Constraints](#com.netflix.titus.Constraints) |  | (Optional) Constraints that have to be met for a task to be scheduled on an agent. |
| experimental | [google.protobuf.Any](#google.protobuf.Any) |  | (Optional) Experimental features |






<a name="com.netflix.titus.Container.AttributesEntry"></a>

### Container.AttributesEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="com.netflix.titus.Container.EnvEntry"></a>

### Container.EnvEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="com.netflix.titus.ContainerResources"></a>

### ContainerResources



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| cpu | [double](#double) |  | (Required) Number of CPUs to allocate (must be always &gt; 0, but the actual limit is configurable). |
| gpu | [uint32](#uint32) |  | (Optional) Number of GPUs to allocate. |
| memoryMB | [uint32](#uint32) |  | (Required) Amount of memory to allocate (must be always &gt; 0, but the actual limit is configurable). |
| diskMB | [uint32](#uint32) |  | (Required) Amount of disk space to allocate (must be always &gt; 0, but the actual limit is configurable). |
| networkMbps | [uint32](#uint32) |  | (Required) Amount of network bandwidth to allocate (must be always &gt; 0, but the actual limit is configurable). |
| allocateIP | [bool](#bool) |  | (Deprecated) IP always allocated. |
| efsMounts | [ContainerResources.EfsMount](#com.netflix.titus.ContainerResources.EfsMount) | repeated | (Optional) EFS mounts. |
| shmSizeMB | [uint32](#uint32) |  | (Optional) Size of shared memory /dev/shm. If not set, a default value will be provided. A provided value must be less than or equal to amount of memory allocated. |
| signedAddressAllocations | [SignedAddressAllocation](#com.netflix.titus.SignedAddressAllocation) | repeated | (Optional) IP addresses allocated from Titus VPC IP service to be assigned to tasks. |
| pool | [string](#string) |  | The name of the pool of static IPs to select from |
| staticIPAddressIDs | [StaticIPAddressIDs](#com.netflix.titus.StaticIPAddressIDs) |  | The list of addresses to use for this job |






<a name="com.netflix.titus.ContainerResources.EfsMount"></a>

### ContainerResources.EfsMount



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| efsId | [string](#string) |  | (Required) EFS id |
| mountPoint | [string](#string) |  | (Required) EFS mount point |
| mountPerm | [MountPerm](#com.netflix.titus.MountPerm) |  | (Required) EFS mount permission mask |
| efsRelativeMountPoint | [string](#string) |  | (Optional) EFS relative mount point |






<a name="com.netflix.titus.Image"></a>

### Image
To reference an image, a user has to provide an image name and a version. A
user may specify a version either with
a tag value (for example &#39;latest&#39;) or a digest. When submitting a job, a user
should provide either a tag or a digest value only (not both of them).

For example, docker images can be referenced by {name=titus-examples,
tag=latest}. A user could also choose to provide only the digest without a
tag. In this case, the tag value would be empty.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | (Required) Image name. |
| tag | [string](#string) |  | (Required if digest not set) Image tag. |
| digest | [string](#string) |  | (Required if tag not set) Image digest. |






<a name="com.netflix.titus.Job"></a>

### Job
Job entity is returned by query operations only.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | (Required) The unique id (UUID). |
| jobDescriptor | [JobDescriptor](#com.netflix.titus.JobDescriptor) |  | (Required) Job descriptor. |
| status | [JobStatus](#com.netflix.titus.JobStatus) |  | (Required) Last known job state. |
| statusHistory | [JobStatus](#com.netflix.titus.JobStatus) | repeated | (Required) State transition history. |
| version | [Version](#com.netflix.titus.Version) |  | (Optional) Job version associated with the given entity. Revision numbers for jobs and tasks are created from the same ordered number generator. |






<a name="com.netflix.titus.JobAttributesDeleteRequest"></a>

### JobAttributesDeleteRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| jobId | [string](#string) |  |  |
| keys | [string](#string) | repeated |  |






<a name="com.netflix.titus.JobAttributesUpdate"></a>

### JobAttributesUpdate



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| jobId | [string](#string) |  |  |
| attributes | [JobAttributesUpdate.AttributesEntry](#com.netflix.titus.JobAttributesUpdate.AttributesEntry) | repeated |  |






<a name="com.netflix.titus.JobAttributesUpdate.AttributesEntry"></a>

### JobAttributesUpdate.AttributesEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="com.netflix.titus.JobCapacityUpdate"></a>

### JobCapacityUpdate



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| jobId | [string](#string) |  |  |
| Capacity | [Capacity](#com.netflix.titus.Capacity) |  |  |






<a name="com.netflix.titus.JobCapacityUpdateWithOptionalAttributes"></a>

### JobCapacityUpdateWithOptionalAttributes



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| jobId | [string](#string) |  |  |
| jobCapacityWithOptionalAttributes | [JobCapacityWithOptionalAttributes](#com.netflix.titus.JobCapacityWithOptionalAttributes) |  |  |






<a name="com.netflix.titus.JobCapacityWithOptionalAttributes"></a>

### JobCapacityWithOptionalAttributes



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| min | [google.protobuf.UInt32Value](#google.protobuf.UInt32Value) |  | (Optional) Minimum number of tasks to run (min &gt;= 0) |
| max | [google.protobuf.UInt32Value](#google.protobuf.UInt32Value) |  | (Optional) Maximum number of tasks that can be run (max &gt;= desired) |
| desired | [google.protobuf.UInt32Value](#google.protobuf.UInt32Value) |  | (Optional) Desired number of tasks to run (min &lt;= desired &lt;= max) |






<a name="com.netflix.titus.JobChangeNotification"></a>

### JobChangeNotification
Job event stream consists of two phases. In the first phase, a snapshot of
the current state (a job and its tasks) is
 streamed, and it is followed by the SnapshotEnd notification marker. In the
 second phase, job/task state updates are sent. When a job is terminated, the
 stream completes.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| jobUpdate | [JobChangeNotification.JobUpdate](#com.netflix.titus.JobChangeNotification.JobUpdate) |  |  |
| taskUpdate | [JobChangeNotification.TaskUpdate](#com.netflix.titus.JobChangeNotification.TaskUpdate) |  |  |
| snapshotEnd | [JobChangeNotification.SnapshotEnd](#com.netflix.titus.JobChangeNotification.SnapshotEnd) |  |  |
| timestamp | [uint64](#uint64) |  | Event creation timestamp. |






<a name="com.netflix.titus.JobChangeNotification.JobUpdate"></a>

### JobChangeNotification.JobUpdate
Emitted when a new job is created or when any of the job&#39;s attributes
change.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| job | [Job](#com.netflix.titus.Job) |  |  |






<a name="com.netflix.titus.JobChangeNotification.SnapshotEnd"></a>

### JobChangeNotification.SnapshotEnd
A notification marker that indicates that all known jobs were streamed to
the client.






<a name="com.netflix.titus.JobChangeNotification.TaskUpdate"></a>

### JobChangeNotification.TaskUpdate
Emitted when a task is created or its state has changed.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| task | [Task](#com.netflix.titus.Task) |  |  |
| movedFromAnotherJob | [bool](#bool) |  | movedFromAnotherJob will be true on the first event for the target Job after a task is moved between jobs. task.jobId will be the destination job, and it will include a &#39;task.movedFromJob&#39; entry in its taskContext map with the source jobId. |






<a name="com.netflix.titus.JobDataRecord"></a>

### JobDataRecord



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| metadata | [DataRecordMetadata](#com.netflix.titus.DataRecordMetadata) |  |  |
| job | [Job](#com.netflix.titus.Job) |  |  |






<a name="com.netflix.titus.JobDescriptor"></a>

### JobDescriptor
Job descriptor contains the full job specification (batch or service) that
is used to run a job.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| owner | [Owner](#com.netflix.titus.Owner) |  | (Optional) Owner of a job (see Owner entity description for more information). |
| applicationName | [string](#string) |  | (Required) Free form name. |
| capacityGroup | [string](#string) |  | (Optional) Capacity group associated with a job. If not set, defaults to &#39;DEFAULT&#39;. |
| jobGroupInfo | [JobGroupInfo](#com.netflix.titus.JobGroupInfo) |  | (Optional) Mostly relevant for service jobs, but applicable to batch jobs as well, allows a user to specify own unique identifier for a job (see JobGroupInfo for more information). |
| attributes | [JobDescriptor.AttributesEntry](#com.netflix.titus.JobDescriptor.AttributesEntry) | repeated | (Optional) Arbitrary set of key/value pairs. Names starting with &#39;titus&#39; (case does not matter) are reserved for an internal use. |
| container | [Container](#com.netflix.titus.Container) |  | (Required) Container to be executed for a job. |
| batch | [BatchJobSpec](#com.netflix.titus.BatchJobSpec) |  | Batch job specific descriptor. |
| service | [ServiceJobSpec](#com.netflix.titus.ServiceJobSpec) |  | Service job specific descriptor. |
| disruptionBudget | [JobDisruptionBudget](#com.netflix.titus.JobDisruptionBudget) |  | (Optional) Job disruption budget. If not defined, a job type specific (batch or service) default is set. |
| networkConfiguration | [NetworkConfiguration](#com.netflix.titus.NetworkConfiguration) |  | (Optional) Networking configuration. If not defined, sane defaults are provided by the backend. |






<a name="com.netflix.titus.JobDescriptor.AttributesEntry"></a>

### JobDescriptor.AttributesEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="com.netflix.titus.JobDisruptionBudget"></a>

### JobDisruptionBudget
Job disruption budget, associated (optionally) with a job.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| selfManaged | [JobDisruptionBudget.SelfManaged](#com.netflix.titus.JobDisruptionBudget.SelfManaged) |  |  |
| availabilityPercentageLimit | [JobDisruptionBudget.AvailabilityPercentageLimit](#com.netflix.titus.JobDisruptionBudget.AvailabilityPercentageLimit) |  |  |
| unhealthyTasksLimit | [JobDisruptionBudget.UnhealthyTasksLimit](#com.netflix.titus.JobDisruptionBudget.UnhealthyTasksLimit) |  |  |
| relocationLimit | [JobDisruptionBudget.RelocationLimit](#com.netflix.titus.JobDisruptionBudget.RelocationLimit) |  |  |
| rateUnlimited | [JobDisruptionBudget.RateUnlimited](#com.netflix.titus.JobDisruptionBudget.RateUnlimited) |  |  |
| ratePercentagePerHour | [JobDisruptionBudget.RatePercentagePerHour](#com.netflix.titus.JobDisruptionBudget.RatePercentagePerHour) |  |  |
| ratePerInterval | [JobDisruptionBudget.RatePerInterval](#com.netflix.titus.JobDisruptionBudget.RatePerInterval) |  |  |
| ratePercentagePerInterval | [JobDisruptionBudget.RatePercentagePerInterval](#com.netflix.titus.JobDisruptionBudget.RatePercentagePerInterval) |  |  |
| timeWindows | [TimeWindow](#com.netflix.titus.TimeWindow) | repeated | (Optional) Time window to which relocation process is restricted. |
| containerHealthProviders | [ContainerHealthProvider](#com.netflix.titus.ContainerHealthProvider) | repeated | (Optional) Container health providers to use when relocating a container. |






<a name="com.netflix.titus.JobDisruptionBudget.AvailabilityPercentageLimit"></a>

### JobDisruptionBudget.AvailabilityPercentageLimit
The minimum required percentage of tasks in a healthy state. Tasks will
not be terminated by the eviction service
 if this limit would be violated.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| percentageOfHealthyContainers | [double](#double) |  |  |






<a name="com.netflix.titus.JobDisruptionBudget.RatePerInterval"></a>

### JobDisruptionBudget.RatePerInterval
Allow up to the given amount of relocations per the time interval.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| intervalMs | [uint64](#uint64) |  |  |
| limitPerInterval | [uint32](#uint32) |  |  |






<a name="com.netflix.titus.JobDisruptionBudget.RatePercentagePerHour"></a>

### JobDisruptionBudget.RatePercentagePerHour
Allow up to the given percentage of tasks to be relocated within an hour.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| maxPercentageOfContainersRelocatedInHour | [double](#double) |  |  |






<a name="com.netflix.titus.JobDisruptionBudget.RatePercentagePerInterval"></a>

### JobDisruptionBudget.RatePercentagePerInterval
Percentage of containers that can be relocated within a time interval. The
number of containers is determined
 during each evaluation, and the number is based on the current desired job
 size. If the job size changes, the percentage of containers changes
 accordingly. For example, setting / interval to 60000 (1 minute) and
 ratePercentagePerInterval to 5 (5%) would allow only for up to 5% of all
 containers to be relocated every minute, given the other criteria are met.
 For a job with a desired size of 100, 5 container relocations per minute
 would be allowed. If the desired job size changes to 200, the relocation
 rate increases to 10 containers per minute.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| intervalMs | [uint64](#uint64) |  |  |
| percentageLimitPerInterval | [double](#double) |  |  |






<a name="com.netflix.titus.JobDisruptionBudget.RateUnlimited"></a>

### JobDisruptionBudget.RateUnlimited
No limits on how many containers in a job may be relocated, provided the
other disruption budget constraints are not violated.






<a name="com.netflix.titus.JobDisruptionBudget.RelocationLimit"></a>

### JobDisruptionBudget.RelocationLimit
Maximum number of times a task can be relocated (only batch tasks, which
have a maximum execution time).


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| limit | [uint32](#uint32) |  |  |






<a name="com.netflix.titus.JobDisruptionBudget.SelfManaged"></a>

### JobDisruptionBudget.SelfManaged
Self managed task relocation policy for users that would like to
orchestrate custom termination logic.
 If the containers are not terminated within the confgured amount of time,
 the system default migration policy is assumed instead.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| relocationTimeMs | [uint64](#uint64) |  | Amount of time a container owner has to migrate their containers. A maximum will be enforced by the system. |






<a name="com.netflix.titus.JobDisruptionBudget.UnhealthyTasksLimit"></a>

### JobDisruptionBudget.UnhealthyTasksLimit
The maximum required amount of tasks in an unhealthy state. Tasks will not
be terminated by the eviction service
 if this limit would be violated.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| limitOfUnhealthyContainers | [uint32](#uint32) |  |  |






<a name="com.netflix.titus.JobDisruptionBudgetUpdate"></a>

### JobDisruptionBudgetUpdate



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| jobId | [string](#string) |  |  |
| disruptionBudget | [JobDisruptionBudget](#com.netflix.titus.JobDisruptionBudget) |  |  |






<a name="com.netflix.titus.JobGroupInfo"></a>

### JobGroupInfo
Additional information for building a supplementary job identifier, as the
&#39;applicationName&#39; can be shared by
many jobs running at the same time in Titus. By setting &#39;JobGroupInfo&#39;, a
user may create a job id that is guaranteed to be unique accross all
currently running Titus jobs. The uniquness is checked if any of the
attributes in this record is a non empty string. The full name is built as:
&#39;&lt;application_name&gt;-&lt;stack&gt;-&lt;detail&gt;-&lt;sequence&gt;.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| stack | [string](#string) |  | (Optional) Any text. It is recommended (but not required), that the value does not include the &#39;-&#39; character. |
| detail | [string](#string) |  | (Optional) Any text. It is recommended (but not required), that the value does not include the &#39;-&#39; character. |
| sequence | [string](#string) |  | (Optional) Any text. It is recommended (but not required), that the value does not include the &#39;-&#39; character. |






<a name="com.netflix.titus.JobId"></a>

### JobId



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |






<a name="com.netflix.titus.JobIds"></a>

### JobIds



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) | repeated |  |






<a name="com.netflix.titus.JobProcessesUpdate"></a>

### JobProcessesUpdate



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| jobId | [string](#string) |  |  |
| serviceJobProcesses | [ServiceJobSpec.ServiceJobProcesses](#com.netflix.titus.ServiceJobSpec.ServiceJobProcesses) |  |  |






<a name="com.netflix.titus.JobQuery"></a>

### JobQuery
Job query request. The query result is limited to the active data set.
Finished jobs/tasks are not evaluated when the query is executed.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| page | [Page](#com.netflix.titus.Page) |  | (Required) Requested page number/size. |
| filteringCriteria | [JobQuery.FilteringCriteriaEntry](#com.netflix.titus.JobQuery.FilteringCriteriaEntry) | repeated | (Optional) Collection of fields and their values for a filter. Available query criteria: jobIds - list of comma separated job ids taskIds - list of comma separated task ids owner - job owner applicationName - job application name imageName - image name imageTag - image tag capacityGroup - job assigned capacity group jobGroupStack - job group stack jobGroupDetail - job group details jobGroupSequence - job group sequence jobType - job type (batch or service) attributes - comma separated job attribute key/value pairs (for example &#34;key1,key2:value2;k3:value3&#34;) attributes.op - logical &#39;and&#39; or &#39;or&#39; operators, which should be applied to multiple attributes specified in the query jobState - job state (one) taskStates - task states (multiple, comma separated). Empty value is the same as no value set. taskStateReasons - reasons associated with task states (multiple, comma separated) needsMigration - if set to true, return only jobs with tasks that require migration |
| fields | [string](#string) | repeated | (Optional) If set, only field values explicitly specified in this parameter will be returned This does not include certain attributes like &#39;jobId&#39;, &#39;appName&#39; which are always returned. If the nested field value is provided, only the explicitly listed nested fields will be returned. For example: tasks.taskId rule will result in including just this value when encoding Task entity. |






<a name="com.netflix.titus.JobQuery.FilteringCriteriaEntry"></a>

### JobQuery.FilteringCriteriaEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="com.netflix.titus.JobQueryResult"></a>

### JobQueryResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| items | [Job](#com.netflix.titus.Job) | repeated |  |
| pagination | [Pagination](#com.netflix.titus.Pagination) |  |  |






<a name="com.netflix.titus.JobStatus"></a>

### JobStatus
Composite data structure holding both job state information and the reason
of the transition to this state.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| state | [JobStatus.JobState](#com.netflix.titus.JobStatus.JobState) |  | (Required) Job state |
| reasonCode | [string](#string) |  | (Optional) An identifier of an event that caused a transition to this state. Each job manager can introduce its own set of reason codes. As of now, there are no common reason codes defined for jobs. |
| reasonMessage | [string](#string) |  | (Optional) Textual description accompanying the &#39;reasonCode&#39;. |
| timestamp | [uint64](#uint64) |  | Time when a transition to a state happened. |






<a name="com.netflix.titus.JobStatusUpdate"></a>

### JobStatusUpdate



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |
| enableStatus | [bool](#bool) |  |  |






<a name="com.netflix.titus.LogLocation"></a>

### LogLocation
Task log locations


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ui | [LogLocation.UI](#com.netflix.titus.LogLocation.UI) |  | (Required) Log access via UI. |
| liveStream | [LogLocation.LiveStream](#com.netflix.titus.LogLocation.LiveStream) |  | (Optional) Live log access. Provided only for running tasks. |
| s3 | [LogLocation.S3](#com.netflix.titus.LogLocation.S3) |  | (Required) S3 log location. |






<a name="com.netflix.titus.LogLocation.LiveStream"></a>

### LogLocation.LiveStream
URL address to a container log service. When a container is running, its
stdout/stderr or any other file in the
 &#39;/logs&#39; folder can be acccessed via this endpoint. The endpoint becomes
 unavailable when the container terminates.

 A user should provide the &#39;f&#39; query parameter to specify a file to
 download. If the &#39;f&#39; query parameter is net set, it defaults to &#39;stdout&#39;.
 The file path must be relative to the &#39;/logs&#39; folder.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| url | [string](#string) |  | (Required) Live log URL. |






<a name="com.netflix.titus.LogLocation.S3"></a>

### LogLocation.S3
Location of S3 folder containing container&#39;s log files.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| accountName | [string](#string) |  | (Required) AWS account name. |
| accountId | [string](#string) |  | (Required) AWS account id. |
| region | [string](#string) |  | (Required) AWS region. |
| bucket | [string](#string) |  | (Required) S3 bucket. |
| key | [string](#string) |  | (Required) The key prefix in the S3 bucket. The assumption is that the consumer finds all objects based on this key prefix. |






<a name="com.netflix.titus.LogLocation.UI"></a>

### LogLocation.UI
URL pointing to a UI based log viewer.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| url | [string](#string) |  | (Required) UI URL. |






<a name="com.netflix.titus.MigrationDetails"></a>

### MigrationDetails
Migration details


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| needsMigration | [bool](#bool) |  | true when the the task needs to be migrated to another agent. |
| deadline | [uint64](#uint64) |  | The deadline time that the owner must migrate their task by or the system will automatically do it. This value is irrelevant if &#39;needsMigration&#39; is set to false and will default to the value &#39;0&#39;. |
| started | [uint64](#uint64) |  | Time at which the migration decision was made. This value is irrelevant if &#39;needsMigration&#39; is set to false and will default to the value &#39;0&#39;. |






<a name="com.netflix.titus.MigrationPolicy"></a>

### MigrationPolicy
Migration polices.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| systemDefault | [MigrationPolicy.SystemDefault](#com.netflix.titus.MigrationPolicy.SystemDefault) |  |  |
| selfManaged | [MigrationPolicy.SelfManaged](#com.netflix.titus.MigrationPolicy.SelfManaged) |  |  |






<a name="com.netflix.titus.MigrationPolicy.SelfManaged"></a>

### MigrationPolicy.SelfManaged
The self managed policy where the owner needs to migrate the tasks.






<a name="com.netflix.titus.MigrationPolicy.SystemDefault"></a>

### MigrationPolicy.SystemDefault
The system default migration policy.






<a name="com.netflix.titus.NetworkConfiguration"></a>

### NetworkConfiguration
Network settings for tasks launched by this job


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| networkMode | [NetworkConfiguration.NetworkMode](#com.netflix.titus.NetworkConfiguration.NetworkMode) |  | Sets the overall network mode for all containers for a Task launched by this job |






<a name="com.netflix.titus.ObserveJobsQuery"></a>

### ObserveJobsQuery
The filtering criteria is applied to both Job and Task events. If a criteria
applies to task fields, the stream will include both task events matching it,
and events for jobs with tasks that match it. The opposite is also true,
e.g.: a criteria on applicationName (a job field) will include both job
events matching it, and events for tasks belonging to a job that matches it.

---------------------------------------------------
Filtering criteria


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| filteringCriteria | [ObserveJobsQuery.FilteringCriteriaEntry](#com.netflix.titus.ObserveJobsQuery.FilteringCriteriaEntry) | repeated | (Optional) Collection of fields and their values for a filter. Available query criteria: jobIds - list of comma separated job ids taskIds - list of comma separated task ids owner - job owner applicationName - job application name imageName - image name imageTag - image tag capacityGroup - job assigned capacity group jobGroupStack - job group stack jobGroupDetail - job group details jobGroupSequence - job group sequence jobType - job type (batch or service) attributes - comma separated job attribute key/value pairs. The same key may occur multiple times, with different values (any value matches the filter). A value may be omitted, in which case if the key occurs only once, only presence of the key is checked, without value comparison (otherwise the value is an empty string). Example filters: * &#39;key1&#39; - matches, if the key is present * &#39;key2:value2&#39; - matches if the attributes contain key &#39;key2&#39; with value &#39;value2&#39; * &#39;key3,key3:value3a,key3:value3b&#39; - matches if the attributes contain key &#39;key3&#39; with value &#39;&#39; or &#39;value3a&#39; or &#39;value3b&#39; All the above can be passed together as &#39;key1,key2:value2,key3,key3:value3a,key3:value3b&#39; attributes.op - logical &#39;and&#39; or &#39;or&#39; operators, which should be applied to multiple attributes specified in the query jobState - job state (one) taskStates - task states (multiple, comma separated). Empty value is the same as no value set. taskStateReasons - reasons associated with task states (multiple, comma separated) needsMigration - if set to true, return only jobs with tasks that require migration |






<a name="com.netflix.titus.ObserveJobsQuery.FilteringCriteriaEntry"></a>

### ObserveJobsQuery.FilteringCriteriaEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="com.netflix.titus.Owner"></a>

### Owner
An owner of a job.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| teamEmail | [string](#string) |  | (Required) An owner&#39;s email address. |






<a name="com.netflix.titus.SecurityProfile"></a>

### SecurityProfile
Container security profile.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| securityGroups | [string](#string) | repeated | (Required) Security groups associated with a container. The expected number of security groups is between 1 and 6. |
| iamRole | [string](#string) |  | (Required) IAM role. |
| attributes | [SecurityProfile.AttributesEntry](#com.netflix.titus.SecurityProfile.AttributesEntry) | repeated | (Optional) Additional security attributes. Key names starting with &#39;titus.&#39; are reserved by Titus. |






<a name="com.netflix.titus.SecurityProfile.AttributesEntry"></a>

### SecurityProfile.AttributesEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="com.netflix.titus.ServiceJobSpec"></a>

### ServiceJobSpec
Service job specification.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| capacity | [Capacity](#com.netflix.titus.Capacity) |  | (Required) Number of tasks to run. If a scaling policy is defined, the number of tasks created will be always within min/max range. |
| enabled | [bool](#bool) |  | (Optional) Job enable/disable status. If a job is disabled, auto-scaling policies are not applied. |
| retryPolicy | [RetryPolicy](#com.netflix.titus.RetryPolicy) |  | (Required) Task rescheduling policy in case of failure. |
| migrationPolicy | [MigrationPolicy](#com.netflix.titus.MigrationPolicy) |  | (Optional) Migration policy for how the tasks will be migrated during an infrastructure change. If not set, defaults to SystemDefault. |
| serviceJobProcesses | [ServiceJobSpec.ServiceJobProcesses](#com.netflix.titus.ServiceJobSpec.ServiceJobProcesses) |  | (Optional) Job scaling activity configurations. |






<a name="com.netflix.titus.ServiceJobSpec.ServiceJobProcesses"></a>

### ServiceJobSpec.ServiceJobProcesses
Configuration of service job processes


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| disableIncreaseDesired | [bool](#bool) |  | Prevents increasing the Job&#39;s desired capacity. Existing tasks that exit such as the process exiting will still be replaced. |
| disableDecreaseDesired | [bool](#bool) |  | Prevents decreasing the Job&#39;s desired capacity. Existing tasks that exit such as the process exiting will still be replaced. |






<a name="com.netflix.titus.Task"></a>

### Task
Task is an entity representing a running container.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | (Required) The Id of the task. |
| jobId | [string](#string) |  | (Required) Id of a job that owns this task. |
| taskContext | [Task.TaskContextEntry](#com.netflix.titus.Task.TaskContextEntry) | repeated | (Required) Includes: * agent execution environment: &#39;agent.region&#39;, &#39;agent.zone&#39;, &#39;agent.host&#39;, &#39;agent.instanceId&#39; * job type specific information: &#39;task.index&#39;, &#39;task.resubmitOf&#39; (id of task which this task is replacing), &#39;task.originalId&#39; (id of task which this task is a replacement) |
| status | [TaskStatus](#com.netflix.titus.TaskStatus) |  | (Required) Last known state of this task. |
| statusHistory | [TaskStatus](#com.netflix.titus.TaskStatus) | repeated | (Required) State transition history. |
| logLocation | [LogLocation](#com.netflix.titus.LogLocation) |  | (Required) Container logs. |
| migrationDetails | [MigrationDetails](#com.netflix.titus.MigrationDetails) |  | (Required) Migration details. |
| attributes | [Task.AttributesEntry](#com.netflix.titus.Task.AttributesEntry) | repeated | (Optional) User defined key/value pairs. |
| version | [Version](#com.netflix.titus.Version) |  | (Optional) Task version associated with the given entity. Revision numbers for jobs and tasks are created from the same ordered number generator. |






<a name="com.netflix.titus.Task.AttributesEntry"></a>

### Task.AttributesEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="com.netflix.titus.Task.TaskContextEntry"></a>

### Task.TaskContextEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="com.netflix.titus.TaskAttributesDeleteRequest"></a>

### TaskAttributesDeleteRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| taskId | [string](#string) |  |  |
| keys | [string](#string) | repeated |  |






<a name="com.netflix.titus.TaskAttributesUpdate"></a>

### TaskAttributesUpdate



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| taskId | [string](#string) |  |  |
| attributes | [TaskAttributesUpdate.AttributesEntry](#com.netflix.titus.TaskAttributesUpdate.AttributesEntry) | repeated |  |






<a name="com.netflix.titus.TaskAttributesUpdate.AttributesEntry"></a>

### TaskAttributesUpdate.AttributesEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="com.netflix.titus.TaskDataRecord"></a>

### TaskDataRecord



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| metadata | [DataRecordMetadata](#com.netflix.titus.DataRecordMetadata) |  |  |
| job | [Job](#com.netflix.titus.Job) |  |  |
| task | [Task](#com.netflix.titus.Task) |  |  |






<a name="com.netflix.titus.TaskId"></a>

### TaskId



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |






<a name="com.netflix.titus.TaskIds"></a>

### TaskIds



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) | repeated |  |






<a name="com.netflix.titus.TaskKillRequest"></a>

### TaskKillRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| taskId | [string](#string) |  | (Required) Task to kill. |
| shrink | [bool](#bool) |  | (Optional) Should job size be reduced |
| preventMinSizeUpdate | [bool](#bool) |  | (Optional) If set to true, and this is a terminate and shrink request (&#39;shrink&#39; set to true), reject the kill request if it would cause the job size go below the current minimum size. Otherwise, the job size minimum size is decremented by 1. |






<a name="com.netflix.titus.TaskMoveRequest"></a>

### TaskMoveRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| sourceJobId | [string](#string) |  | (Required) Source Job(Service) distinct from target job which is the source of the task. |
| targetJobId | [string](#string) |  | (Required) Target Job(Service) distinct from source job which is the recipient of the task. |
| taskId | [string](#string) |  | (Required) Task to move. Task must be in started state. |






<a name="com.netflix.titus.TaskQuery"></a>

### TaskQuery
Task query request. The query result is limited to the active data set.
Finished jobs/tasks are not evaluated when the query is executed.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| page | [Page](#com.netflix.titus.Page) |  | (Required) Requested page number/size. |
| filteringCriteria | [TaskQuery.FilteringCriteriaEntry](#com.netflix.titus.TaskQuery.FilteringCriteriaEntry) | repeated | (Optional) Collection of fields and their values for a filter. Available query criteria: jobIds - list of comma separated job ids taskIds - list of comma separated task ids owner - job owner applicationName - job application name imageName - image name imageTag - image tag capacityGroup - job assigned capacity group jobGroupStack - job group stack jobGroupDetail - job group details jobGroupSequence - job group sequence jobType - job type (batch or service) attributes - comma separated job attribute key/value pairs. The same key may occur multiple times, with different values (any value matches the filter). A value may be omitted, in which case if the key occurs only once, only presence of the key is checked, without value comparison (otherwise the value is an empty string). Example filters: * &#39;key1&#39; - matches, if the key is present * &#39;key2:value2&#39; - matches if the attributes contain key &#39;key2&#39; with value &#39;value2&#39; * &#39;key3,key3:value3a,key3:value3b&#39; - matches if the attributes contain key &#39;key3&#39; with value &#39;&#39; or &#39;value3a&#39; or &#39;value3b&#39; All the above can be passed together as &#39;key1,key2:value2,key3,key3:value3a,key3:value3b&#39; attributes.op - logical &#39;and&#39; or &#39;or&#39; operators, which should be applied to multiple attributes specified in the query jobState - job state (one) taskStates - task states (multiple, comma separated). Empty value is the same as no value set. taskStateReasons - reasons associated with task states (multiple, comma separated) needsMigration - if set to true, return only tasks that require migration skipSystemFailures - a filter for finished tasks only (does not affect non-finished tasks). If set to true, a finished task that failed due to a system error is filtered out. System error codes are specified in the TaskStatus type definition. These are container failures due to Titus internal issues. |
| fields | [string](#string) | repeated | (Optional) If set, only field values explicitly given in this parameter will be returned |






<a name="com.netflix.titus.TaskQuery.FilteringCriteriaEntry"></a>

### TaskQuery.FilteringCriteriaEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="com.netflix.titus.TaskQueryResult"></a>

### TaskQueryResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| items | [Task](#com.netflix.titus.Task) | repeated |  |
| pagination | [Pagination](#com.netflix.titus.Pagination) |  |  |






<a name="com.netflix.titus.TaskStatus"></a>

### TaskStatus



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| state | [TaskStatus.TaskState](#com.netflix.titus.TaskStatus.TaskState) |  | (Required) Task state |
| reasonCode | [string](#string) |  | (Optional) An identifier of an event that caused a transition to this state. Each job manager can introduce its own set of reason codes. Below are the predefined (common) set of reason codes associated with task state &#39;Finished&#39;: * &#39;normal&#39; - task completed with the exit code 0 * &#39;failed&#39; - task completed with a non zero error code * &#39;killed&#39; - task was explicitly terminated by a user * &#39;scaledDown&#39; - task was terminated as a result of job scaling down * &#39;stuckInState&#39; - task was terminated, as it did not progress to the next state in the expected amount of time * &#39;runtimeLimitExceeded&#39; - task was terminated, as its runtime limit was exceeded * &#39;lost&#39; - task was lost, and its final status is unknown * &#39;invalidRequest&#39; - invalid container definition (security group, image name, etc) * &#39;crashed&#39; - container crashed due to some internal system error * &#39;transientSystemError&#39; - transient error, not agent specific (for example AWS rate limiting) * &#39;localSystemError&#39; - an error scoped to an agent instance on which a container was run. The agent should be quarantined or terminated. * &#39;unknownSystemError&#39; - unknown error which cannot be classified either as local/non-local or transient. If there are multiple occurences of this error, the agent should be quarantined or terminated. |
| reasonMessage | [string](#string) |  | (Optional) Textual description accompanying the &#39;reasonCode&#39;. |
| timestamp | [uint64](#uint64) |  | Time when a transition to a state occurred. |
| containerState | [TaskStatus.ContainerState](#com.netflix.titus.TaskStatus.ContainerState) | repeated | An array of ContainerStates, reporting the health of individual containers |






<a name="com.netflix.titus.TaskStatus.ContainerState"></a>

### TaskStatus.ContainerState



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| containerName | [string](#string) |  | Name of the container |
| containerHealth | [TaskStatus.ContainerState.ContainerHealth](#com.netflix.titus.TaskStatus.ContainerState.ContainerHealth) |  | Enum representing if the individual container is healthy |





 


<a name="com.netflix.titus.JobStatus.JobState"></a>

### JobStatus.JobState
State information associated with a job.

| Name | Number | Description |
| ---- | ------ | ----------- |
| Accepted | 0 | A job is persisted in Titus and is ready to be scheduled. |
| KillInitiated | 1 | A job still has running tasks that were requested to be terminated. No more tasks for this job are deployed. Job policy update operations are not allowed. |
| Finished | 2 | A job has no running tasks, and new tasks cannot be created. Job policy update operations are not allowed. |



<a name="com.netflix.titus.NetworkConfiguration.NetworkMode"></a>

### NetworkConfiguration.NetworkMode


| Name | Number | Description |
| ---- | ------ | ----------- |
| UnknownNetworkMode | 0 | Unknown, the backend will have to chose a sane default base on other inputs |
| Ipv4Only | 1 | IPv4 only means the task will not get an ipv6 address, and will only get a unique v4. |
| Ipv6AndIpv4 | 2 | IPv6 And IPv4 (True Dual Stack), each task gets a unique v6 and v4 address. |
| Ipv6AndIpv4Fallback | 3 | IPv6 and IPv4 Fallback uses the Titus IPv4 &#34;transition mechanism&#34; to give v4 connectivity transparently without providing every container their own IPv4 address. From a spinnaker/task perspective, only an IPv6 address is allocated to the task. |
| Ipv6Only | 4 | IPv6 Only is for true believers, no IPv4 connectivity is provided. |



<a name="com.netflix.titus.TaskStatus.ContainerState.ContainerHealth"></a>

### TaskStatus.ContainerState.ContainerHealth


| Name | Number | Description |
| ---- | ------ | ----------- |
| Unset | 0 | Unset means we haven&#39;t gotten any signal yet about healthiness |
| Unhealthy | 1 | Unhealthy means the container is no longer passing its healthcheck |
| Healthy | 2 | Healthy means the container is passing its healthcheck |



<a name="com.netflix.titus.TaskStatus.TaskState"></a>

### TaskStatus.TaskState
State information associated with a task.

| Name | Number | Description |
| ---- | ------ | ----------- |
| Accepted | 0 | A task was passed to the scheduler but has no resources allocated yet. |
| Launched | 1 | A task had resources allocated and was passed to Mesos. |
| StartInitiated | 2 | An executor provisioned resources for a task. |
| Started | 3 | The container was started. |
| KillInitiated | 4 | A user requested the task to be terminated. An executor is stopping the task and releasing its allocated resources. |
| Disconnected | 5 | No connectivity between Mesos and an agent running a task. The task&#39;s state cannot be determined until the connection is established again. |
| Finished | 6 | A task completed or was forced by a user to be terminated. All resources previously assigned to this task are released. |


 

 


<a name="com.netflix.titus.JobManagementService"></a>

### JobManagementService


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| CreateJob | [JobDescriptor](#com.netflix.titus.JobDescriptor) | [JobId](#com.netflix.titus.JobId) | Create a new job |
| UpdateJobCapacity | [JobCapacityUpdate](#com.netflix.titus.JobCapacityUpdate) | [.google.protobuf.Empty](#google.protobuf.Empty) | Modify the number of instances for a service job. |
| UpdateJobCapacityWithOptionalAttributes | [JobCapacityUpdateWithOptionalAttributes](#com.netflix.titus.JobCapacityUpdateWithOptionalAttributes) | [.google.protobuf.Empty](#google.protobuf.Empty) | Modify job capacity for a service job. It allows you to specify only values (min / max / desired) that need to be updated. |
| UpdateJobStatus | [JobStatusUpdate](#com.netflix.titus.JobStatusUpdate) | [.google.protobuf.Empty](#google.protobuf.Empty) | Mark a job as enabled or disabled. Disabled jobs are not auto-scaled. |
| UpdateJobProcesses | [JobProcessesUpdate](#com.netflix.titus.JobProcessesUpdate) | [.google.protobuf.Empty](#google.protobuf.Empty) | Update service job processes such as disable increase/decrease instance count |
| UpdateJobDisruptionBudget | [JobDisruptionBudgetUpdate](#com.netflix.titus.JobDisruptionBudgetUpdate) | [.google.protobuf.Empty](#google.protobuf.Empty) | Update a job disruption budget. |
| FindJobs | [JobQuery](#com.netflix.titus.JobQuery) | [JobQueryResult](#com.netflix.titus.JobQueryResult) | Return a collection of jobs matching the given criteria. The query result is limited to the active data set. Finished jobs/tasks are not evaluated when the query is executed. |
| FindJob | [JobId](#com.netflix.titus.JobId) | [Job](#com.netflix.titus.Job) | Return a job with given id. |
| ObserveJob | [JobId](#com.netflix.titus.JobId) | [JobChangeNotification](#com.netflix.titus.JobChangeNotification) stream | On subscription, sends complete job (definition and active tasks). Next, send distinct job definition or task state chage notifications. The stream is closed by the server only when the job is finished, which happens after the &#39;JobFinished&#39; notification is delivered. |
| ObserveJobs | [ObserveJobsQuery](#com.netflix.titus.ObserveJobsQuery) | [JobChangeNotification](#com.netflix.titus.JobChangeNotification) stream | Equivalent to ObserveJob, applied to all active jobs. This stream never completes. |
| KillJob | [JobId](#com.netflix.titus.JobId) | [.google.protobuf.Empty](#google.protobuf.Empty) | Terminate all running tasks of a job, and than terminate the job. |
| UpdateJobAttributes | [JobAttributesUpdate](#com.netflix.titus.JobAttributesUpdate) | [.google.protobuf.Empty](#google.protobuf.Empty) | Update the attributes of a job. This will either create new attributes or replace existing ones with the same key. |
| DeleteJobAttributes | [JobAttributesDeleteRequest](#com.netflix.titus.JobAttributesDeleteRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Delete the attributes of a job. |
| FindTask | [TaskId](#com.netflix.titus.TaskId) | [Task](#com.netflix.titus.Task) | Get a task with the specified id. |
| FindTasks | [TaskQuery](#com.netflix.titus.TaskQuery) | [TaskQueryResult](#com.netflix.titus.TaskQueryResult) | Return a collection of tasks specified in the &#39;TaskQuery&#39; request matching the given criteria. The query result is limited to the active data set. Finished jobs/tasks are not evaluated when the query is executed. |
| KillTask | [TaskKillRequest](#com.netflix.titus.TaskKillRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Terminate a task with the given id. Depending on job type, the task might be immediately restarted/replaced with a new one. |
| UpdateTaskAttributes | [TaskAttributesUpdate](#com.netflix.titus.TaskAttributesUpdate) | [.google.protobuf.Empty](#google.protobuf.Empty) | Update the attributes of a task. This will either create new attributes or replace existing ones with the same key. |
| DeleteTaskAttributes | [TaskAttributesDeleteRequest](#com.netflix.titus.TaskAttributesDeleteRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Delete the attributes of a task. |
| MoveTask | [TaskMoveRequest](#com.netflix.titus.TaskMoveRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Move a task from one service job to another. Source and destination jobs must be service jobs, and compatible. Jobs are compatible when their JobDescriptors are identical, ignoring the following values:

* owner * applicationName * jobGroupInfo (stack, details, sequence) * disruptionBudget * Any attributes not prefixed with `titus.` or `titusParameter.` * Any container.attributes not prefixed with `titus.` or `titusParameter.` * All information specific to service jobs (JobSpec): Capacity, RetryPolicy, MigrationPolicy, etc |

 



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

