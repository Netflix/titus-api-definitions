# Protocol Documentation
<a name="top"/>

## Table of Contents
* [titus_job_api.proto](#titus_job_api.proto)
 * [BatchClusterSpec](#netflix.titus.BatchClusterSpec)
 * [BatchJobSpec](#netflix.titus.BatchJobSpec)
 * [Constraints](#netflix.titus.Constraints)
 * [Constraints.ConstraintsEntry](#netflix.titus.Constraints.ConstraintsEntry)
 * [Container](#netflix.titus.Container)
 * [Container.EnvEntry](#netflix.titus.Container.EnvEntry)
 * [Container.ParametersEntry](#netflix.titus.Container.ParametersEntry)
 * [Container.ResourcesEntry](#netflix.titus.Container.ResourcesEntry)
 * [Container.SecurityProfileEntry](#netflix.titus.Container.SecurityProfileEntry)
 * [Image](#netflix.titus.Image)
 * [Job](#netflix.titus.Job)
 * [JobChangeNotification](#netflix.titus.JobChangeNotification)
 * [JobChangeNotification.JobDefinitionUpdate](#netflix.titus.JobChangeNotification.JobDefinitionUpdate)
 * [JobChangeNotification.JobFinished](#netflix.titus.JobChangeNotification.JobFinished)
 * [JobChangeNotification.JobSnapshot](#netflix.titus.JobChangeNotification.JobSnapshot)
 * [JobChangeNotification.SnapshotEnd](#netflix.titus.JobChangeNotification.SnapshotEnd)
 * [JobChangeNotification.TaskUpdate](#netflix.titus.JobChangeNotification.TaskUpdate)
 * [JobCluster](#netflix.titus.JobCluster)
 * [JobClusterDescriptor](#netflix.titus.JobClusterDescriptor)
 * [JobClusterId](#netflix.titus.JobClusterId)
 * [JobClusterNotification](#netflix.titus.JobClusterNotification)
 * [JobClusterNotification.JobAdded](#netflix.titus.JobClusterNotification.JobAdded)
 * [JobClusterNotification.JobClusterDefinitionUpdate](#netflix.titus.JobClusterNotification.JobClusterDefinitionUpdate)
 * [JobClusterNotification.JobClusterRemoved](#netflix.titus.JobClusterNotification.JobClusterRemoved)
 * [JobClusterNotification.JobClusterSnapshot](#netflix.titus.JobClusterNotification.JobClusterSnapshot)
 * [JobClusterNotification.JobFinished](#netflix.titus.JobClusterNotification.JobFinished)
 * [JobClusterNotification.SnapshotEnd](#netflix.titus.JobClusterNotification.SnapshotEnd)
 * [JobClusterQuery](#netflix.titus.JobClusterQuery)
 * [JobClusterQuery.FiterlingCriteriaEntry](#netflix.titus.JobClusterQuery.FiterlingCriteriaEntry)
 * [JobClusterQueryResult](#netflix.titus.JobClusterQueryResult)
 * [JobClusterStatusUpdate](#netflix.titus.JobClusterStatusUpdate)
 * [JobDescriptor](#netflix.titus.JobDescriptor)
 * [JobDescriptor.ContainersEntry](#netflix.titus.JobDescriptor.ContainersEntry)
 * [JobDescriptor.LabelsEntry](#netflix.titus.JobDescriptor.LabelsEntry)
 * [JobGroupInfo](#netflix.titus.JobGroupInfo)
 * [JobId](#netflix.titus.JobId)
 * [JobIds](#netflix.titus.JobIds)
 * [JobInstancesUpdate](#netflix.titus.JobInstancesUpdate)
 * [JobQuery](#netflix.titus.JobQuery)
 * [JobQuery.FiterlingCriteriaEntry](#netflix.titus.JobQuery.FiterlingCriteriaEntry)
 * [JobQueryResult](#netflix.titus.JobQueryResult)
 * [JobState](#netflix.titus.JobState)
 * [JobStatusUpdate](#netflix.titus.JobStatusUpdate)
 * [MantisAutoScalingPolicy](#netflix.titus.MantisAutoScalingPolicy)
 * [MantisAutoScalingPolicy.RollingCount](#netflix.titus.MantisAutoScalingPolicy.RollingCount)
 * [MantisAutoScalingPolicy.StrategiesEntry](#netflix.titus.MantisAutoScalingPolicy.StrategiesEntry)
 * [MantisAutoScalingPolicy.Strategy](#netflix.titus.MantisAutoScalingPolicy.Strategy)
 * [MantisClusterSpec](#netflix.titus.MantisClusterSpec)
 * [MantisJobSLA](#netflix.titus.MantisJobSLA)
 * [MantisJobSpec](#netflix.titus.MantisJobSpec)
 * [MantisJobSpec.ParametersEntry](#netflix.titus.MantisJobSpec.ParametersEntry)
 * [MantisStage](#netflix.titus.MantisStage)
 * [Owner](#netflix.titus.Owner)
 * [ScalingPolicy](#netflix.titus.ScalingPolicy)
 * [ScalingPolicy.LabelsEntry](#netflix.titus.ScalingPolicy.LabelsEntry)
 * [ServiceClusterSpec](#netflix.titus.ServiceClusterSpec)
 * [ServiceJobSpec](#netflix.titus.ServiceJobSpec)
 * [StateChange](#netflix.titus.StateChange)
 * [Task](#netflix.titus.Task)
 * [Task.TaskContextEntry](#netflix.titus.Task.TaskContextEntry)
 * [TaskId](#netflix.titus.TaskId)
 * [TaskIds](#netflix.titus.TaskIds)
 * [TaskInstances](#netflix.titus.TaskInstances)
 * [TaskQuery](#netflix.titus.TaskQuery)
 * [TaskQuery.FiterlingCriteriaEntry](#netflix.titus.TaskQuery.FiterlingCriteriaEntry)
 * [TaskQueryResult](#netflix.titus.TaskQueryResult)
 * [TaskState](#netflix.titus.TaskState)
 * [UserIdentity](#netflix.titus.UserIdentity)
 * [UserIdentity.SecurityContextEntry](#netflix.titus.UserIdentity.SecurityContextEntry)
 * [MantisJobSLA.DurationType](#netflix.titus.MantisJobSLA.DurationType)
 * [State](#netflix.titus.State)
 * [JobManagementService](#netflix.titus.JobManagementService)
* [Scalar Value Types](#scalar-value-types)

<a name="titus_job_api.proto"/>
<p align="right"><a href="#top">Top</a></p>

## titus_job_api.proto



<a name="netflix.titus.BatchClusterSpec"/>
### BatchClusterSpec
Batch job cluster specification. Currently there are no batch specific properties.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |


<a name="netflix.titus.BatchJobSpec"/>
### BatchJobSpec
Batch job specification.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| instances | [TaskInstances](#netflix.titus.TaskInstances) | optional | Number of tasks to run. As batch job cannot auto-scale, min/max task numbers can be safely ignored. |
| runtimeLimitSecs | [uint64](#uint64) | optional | Maximum amount of time in seconds that the job's task is allowed to run. Time is measured since the tasktransitions to 'RUNNING' state. If a task terminates with an error, and is restarted, the time measurementstarts from 0. |
| retryPolicy | [RetryPolicy](#netflix.titus.RetryPolicy) | optional | Task rescheduling policy in case of failure. |
| containerId | [string](#string) | optional | Reference to a container from a job definition that holds this job specification. If there is no container withthis id, the job submit request is rejected. |


<a name="netflix.titus.Constraints"/>
### Constraints
Task placement constraints. Currently supported constraint types are:
* zoneBalance
* uniqueHost
* exclusiveHost
* host
* serverGroup

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| constraints | [Constraints.ConstraintsEntry](#netflix.titus.Constraints.ConstraintsEntry) | repeated | (Optional) A map of constraint name/values. If multiple constraints are given, all must be met (logical 'and'). |
| expression | [string](#string) | optional | Not supported yet.(Optional) An expression combining multiple constraints. For example 'zoneBalance AND serverGroup == "mySG"'.Avalilable operators: <, <=, ==, >, >=, in, like, AND, OR |


<a name="netflix.titus.Constraints.ConstraintsEntry"/>
### Constraints.ConstraintsEntry


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) | optional |  |
| value | [string](#string) | optional |  |


<a name="netflix.titus.Container"/>
### Container


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| resources | [Container.ResourcesEntry](#netflix.titus.Container.ResourcesEntry) | repeated | (Required) CPU, memory, disk, network, ports, ENI, allocateIPEach resource/configuration is a key/value pair of string type Data encoding is resource/configuration type specificHere are the recommendations for data encoding for new resource types (not mandatory):* Scalar values encoded always as a string value, with unit if applicable (for example “10Gb”)* Array value is a collection of scalar values separated by comma* Map value is a collection of key/value pairs separated by semicolon. Key/value pair must contain ‘=’ as a separator. Value may be empty, in which case ‘=’ is optional |
| securityProfile | [Container.SecurityProfileEntry](#netflix.titus.Container.SecurityProfileEntry) | repeated | (Required) Container security profile: IAM role, security group list. |
| image | [Image](#netflix.titus.Image) | optional | (Required) Image reference. |
| parameters | [Container.ParametersEntry](#netflix.titus.Container.ParametersEntry) | repeated | (Optional) Arbitrary set of key/value pairs. Key names starting with 'titus.' are reserved for an internal usage. |
| entryPoint | [string](#string) | repeated | (Optional) A binary to execute with parameters. If not set, the entry point must be defined in the container image. |
| command | [string](#string) | repeated | (Optional) Additional parameters for the entry point defined either here or provided in the container image |
| env | [Container.EnvEntry](#netflix.titus.Container.EnvEntry) | repeated | (Optional) A collection of system environment variables passed to the container. |
| softConstraints | [Constraints](#netflix.titus.Constraints) | optional | (Optional) Constraints that does not have to be met for a task to be scheduled on an agent, butTitus makes best effort to fullfill them if possible. |
| hardConstraints | [Constraints](#netflix.titus.Constraints) | optional | (Optional) Constraints that have to be met for a task to be scheduled on an agent. |


<a name="netflix.titus.Container.EnvEntry"/>
### Container.EnvEntry


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) | optional |  |
| value | [string](#string) | optional |  |


<a name="netflix.titus.Container.ParametersEntry"/>
### Container.ParametersEntry


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) | optional |  |
| value | [string](#string) | optional |  |


<a name="netflix.titus.Container.ResourcesEntry"/>
### Container.ResourcesEntry


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) | optional |  |
| value | [string](#string) | optional |  |


<a name="netflix.titus.Container.SecurityProfileEntry"/>
### Container.SecurityProfileEntry


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) | optional |  |
| value | [string](#string) | optional |  |


<a name="netflix.titus.Image"/>
### Image
In the job submit operation one of these values should be specified only, ther other will be resolved by Titus.
The resulting job descriptor will include always both values. For the deployment purposes only 'imageId' value is used.
The resolution happens only once, immediately during the submit type, so the same image is used for all tasks.
This behavior is not applied for job cluster. This means that if a name contains 'latest' version, each job
created from the same cluster definition, may have different effective image version.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| imageId | [string](#string) | optional | (Optional) Unique image id. |
| name | [string](#string) | optional | (Optional) Image name. |


<a name="netflix.titus.Job"/>
### Job
Job entity is returned by query operations only.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) | optional | (Required) A unique id (UUID) of a job. |
| jobClusterId | [string](#string) | optional | (Required) A reference to an existing job cluster. |
| jobDescriptor | [JobDescriptor](#netflix.titus.JobDescriptor) | optional | (Required) Job descriptor. |
| tasks | [Task](#netflix.titus.Task) | repeated | (Required) List of tasks associated with this job. The content of the list depends on the query operation. |
| jobState | [JobState](#netflix.titus.JobState) | optional | (Required) Last known job state. |
| stateChanges | [StateChange](#netflix.titus.StateChange) | repeated | (Required) State transition history. |


<a name="netflix.titus.JobChangeNotification"/>
### JobChangeNotification


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| jobSnapshot | [JobChangeNotification.JobSnapshot](#netflix.titus.JobChangeNotification.JobSnapshot) | optional |  |
| snapshotEnd | [JobChangeNotification.SnapshotEnd](#netflix.titus.JobChangeNotification.SnapshotEnd) | optional |  |
| jobDefinitionUpdate | [JobChangeNotification.JobDefinitionUpdate](#netflix.titus.JobChangeNotification.JobDefinitionUpdate) | optional |  |
| jobFinished | [JobChangeNotification.JobFinished](#netflix.titus.JobChangeNotification.JobFinished) | optional |  |
| taskUdate | [JobChangeNotification.TaskUpdate](#netflix.titus.JobChangeNotification.TaskUpdate) | optional |  |


<a name="netflix.titus.JobChangeNotification.JobDefinitionUpdate"/>
### JobChangeNotification.JobDefinitionUpdate
Emitted when a new job is created or existing's job definition is changed.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) | optional |  |
| jobDescriptor | [JobDescriptor](#netflix.titus.JobDescriptor) | optional |  |


<a name="netflix.titus.JobChangeNotification.JobFinished"/>
### JobChangeNotification.JobFinished
Notification sent when a job completes. It is proceeded by all job's task state updates. Once this
notification is sent, no other notifications perteining to this job (and its tasks) are sent.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) | optional |  |


<a name="netflix.titus.JobChangeNotification.JobSnapshot"/>
### JobChangeNotification.JobSnapshot
Full information about a job, including its descriptor and active task set.
Immediately after subscription, one instance of this notification type is send for each running job.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| job | [Job](#netflix.titus.Job) | optional |  |


<a name="netflix.titus.JobChangeNotification.SnapshotEnd"/>
### JobChangeNotification.SnapshotEnd
A marker notification, indicating that all known jobs were streamed to the client, and now will follow
state changes.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |


<a name="netflix.titus.JobChangeNotification.TaskUpdate"/>
### JobChangeNotification.TaskUpdate
Emitted when a task is created or its state has changed.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| task | [Task](#netflix.titus.Task) | optional |  |


<a name="netflix.titus.JobCluster"/>
### JobCluster


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) | optional | (Required) A unique id (UUID) of a job cluster. |
| descriptor | [JobClusterDescriptor](#netflix.titus.JobClusterDescriptor) | optional | (Required) Job cluster descriptor. |


<a name="netflix.titus.JobClusterDescriptor"/>
### JobClusterDescriptor
Job cluster descriptor.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| owner | [Owner](#netflix.titus.Owner) | optional | (Optional) Owner of a job cluster (see Owner entity description for more information). |
| name | [string](#string) | optional | (Required) Descriptive name for the job cluster. It does not have to be unique. |
| jobDescriptor | [JobDescriptor](#netflix.titus.JobDescriptor) | optional | (Optional) A job descriptor template. A job can be created by referencing a job cluster. |
| batch | [BatchClusterSpec](#netflix.titus.BatchClusterSpec) | optional |  |
| service | [ServiceClusterSpec](#netflix.titus.ServiceClusterSpec) | optional |  |
| mantis | [MantisClusterSpec](#netflix.titus.MantisClusterSpec) | optional |  |


<a name="netflix.titus.JobClusterId"/>
### JobClusterId
A wrapper type for job cluster id.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) | optional |  |


<a name="netflix.titus.JobClusterNotification"/>
### JobClusterNotification


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| jobClusterSnapshot | [JobClusterNotification.JobClusterSnapshot](#netflix.titus.JobClusterNotification.JobClusterSnapshot) | optional |  |
| snapshotEnd | [JobClusterNotification.SnapshotEnd](#netflix.titus.JobClusterNotification.SnapshotEnd) | optional |  |
| jobClusterDefinitionUpdate | [JobClusterNotification.JobClusterDefinitionUpdate](#netflix.titus.JobClusterNotification.JobClusterDefinitionUpdate) | optional |  |
| jobClusterRemoved | [JobClusterNotification.JobClusterRemoved](#netflix.titus.JobClusterNotification.JobClusterRemoved) | optional |  |
| jobAdded | [JobClusterNotification.JobAdded](#netflix.titus.JobClusterNotification.JobAdded) | optional |  |
| jobFinished | [JobClusterNotification.JobFinished](#netflix.titus.JobClusterNotification.JobFinished) | optional |  |


<a name="netflix.titus.JobClusterNotification.JobAdded"/>
### JobClusterNotification.JobAdded
Emitted when a new job associated with this cluster is created.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| jobId | [string](#string) | optional |  |


<a name="netflix.titus.JobClusterNotification.JobClusterDefinitionUpdate"/>
### JobClusterNotification.JobClusterDefinitionUpdate
Emitted when a new job is created or existing's job definition is changed.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) | optional |  |
| descriptor | [JobClusterDescriptor](#netflix.titus.JobClusterDescriptor) | optional |  |


<a name="netflix.titus.JobClusterNotification.JobClusterRemoved"/>
### JobClusterNotification.JobClusterRemoved
Notification sent when a job cluster is removed from the system.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) | optional |  |


<a name="netflix.titus.JobClusterNotification.JobClusterSnapshot"/>
### JobClusterNotification.JobClusterSnapshot
Full information about a job cluster, including its job ids.
Immediately after subscription, one instance of this notification type is send for each known job cluster.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| jobCluster | [JobCluster](#netflix.titus.JobCluster) | optional |  |
| jobIds | [string](#string) | repeated |  |


<a name="netflix.titus.JobClusterNotification.JobFinished"/>
### JobClusterNotification.JobFinished
Emitted when a new job associated with this cluster is finished.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| jobId | [string](#string) | optional |  |


<a name="netflix.titus.JobClusterNotification.SnapshotEnd"/>
### JobClusterNotification.SnapshotEnd
A marker notification, indicating that all known jobs were streamed to the client, and now will follow
state changes.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |


<a name="netflix.titus.JobClusterQuery"/>
### JobClusterQuery


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| page | [Page](#netflix.titus.Page) | optional | (Optional) Requested page number/size. |
| fiterlingCriteria | [JobClusterQuery.FiterlingCriteriaEntry](#netflix.titus.JobClusterQuery.FiterlingCriteriaEntry) | repeated | (Optional) Collection of fields and their values for a filter. |
| fields | [string](#string) | repeated | (Optional) If set, only field values explicitly given in this parameter will be returned. |


<a name="netflix.titus.JobClusterQuery.FiterlingCriteriaEntry"/>
### JobClusterQuery.FiterlingCriteriaEntry


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) | optional |  |
| value | [string](#string) | optional |  |


<a name="netflix.titus.JobClusterQueryResult"/>
### JobClusterQueryResult
A wrapper for a job cluster query reply.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| items | [JobCluster](#netflix.titus.JobCluster) | repeated |  |
| pagination | [Pagination](#netflix.titus.Pagination) | optional |  |


<a name="netflix.titus.JobClusterStatusUpdate"/>
### JobClusterStatusUpdate


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) | optional |  |
| enableStatus | [bool](#bool) | optional |  |


<a name="netflix.titus.JobDescriptor"/>
### JobDescriptor
Job descriptor contains full job specification (batch, service or Mantis) sufficient to run a job.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| owner | [Owner](#netflix.titus.Owner) | optional | (Optional) Owner of a job (see Owner entity description for more information). |
| appName | [string](#string) | optional | (Optional) Arbitrary name, not interpreted by Titus. Does not have to be unique. If not provided, a defaultname, that depends on job type (batch, service or Mantis) is set. |
| jobGroupInfo | [JobGroupInfo](#netflix.titus.JobGroupInfo) | optional | (Optional) Mostly relevant for service jobs, provides further grouping criteria for a job. |
| labels | [JobDescriptor.LabelsEntry](#netflix.titus.JobDescriptor.LabelsEntry) | repeated | Arbitary set of key/value pairs. Names starting with 'titus' (case does not matter) are reserved for an internal use. |
| containers | [JobDescriptor.ContainersEntry](#netflix.titus.JobDescriptor.ContainersEntry) | repeated | (Required) Collection of containers to be executed for a job. For batch and service jobs, a single containeris required. For Mantis job, number of containers must be equal to number of stages, and each stage must beassociated with its own container. |
| batch | [BatchJobSpec](#netflix.titus.BatchJobSpec) | optional |  |
| service | [ServiceJobSpec](#netflix.titus.ServiceJobSpec) | optional |  |
| mantis | [MantisJobSpec](#netflix.titus.MantisJobSpec) | optional |  |


<a name="netflix.titus.JobDescriptor.ContainersEntry"/>
### JobDescriptor.ContainersEntry


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) | optional |  |
| value | [Container](#netflix.titus.Container) | optional |  |


<a name="netflix.titus.JobDescriptor.LabelsEntry"/>
### JobDescriptor.LabelsEntry


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) | optional |  |
| value | [string](#string) | optional |  |


<a name="netflix.titus.JobGroupInfo"/>
### JobGroupInfo
??? This is not really job group, but a single job identifier. Can we find better name here?

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| stack | [string](#string) | optional | (Required) |
| detail | [string](#string) | optional | (Optional) |
| sequence | [string](#string) | optional | (Optional) |


<a name="netflix.titus.JobId"/>
### JobId
A wrapper type for job id.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) | optional |  |


<a name="netflix.titus.JobIds"/>
### JobIds


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) | repeated |  |


<a name="netflix.titus.JobInstancesUpdate"/>
### JobInstancesUpdate
TODO For mantis we need also stage index.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| jobId | [string](#string) | optional |  |
| instances | [TaskInstances](#netflix.titus.TaskInstances) | optional |  |


<a name="netflix.titus.JobQuery"/>
### JobQuery


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| page | [Page](#netflix.titus.Page) | optional | (Optional) Requested page number/size. |
| fiterlingCriteria | [JobQuery.FiterlingCriteriaEntry](#netflix.titus.JobQuery.FiterlingCriteriaEntry) | repeated | (Optional) Collection of fields and their values for a filter.TODO Should we have oneof data structure so we can implement expressions in the future. |
| fields | [string](#string) | repeated | (Optional) If set, only field values explicitly given in this parameter will be returnedThis does not include certain attributes like 'jobId', 'appName' which are always returned.If nested field value is provided, only the explicitly listed nested fields will be returned.For example: tasks.taskId rule will result in including just this value when encoding Task entity. |


<a name="netflix.titus.JobQuery.FiterlingCriteriaEntry"/>
### JobQuery.FiterlingCriteriaEntry


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) | optional |  |
| value | [string](#string) | optional |  |


<a name="netflix.titus.JobQueryResult"/>
### JobQueryResult
A wrapper for job query reply.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| items | [Job](#netflix.titus.Job) | repeated |  |
| pagination | [Pagination](#netflix.titus.Pagination) | optional |  |


<a name="netflix.titus.JobState"/>
### JobState


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| state | [State](#netflix.titus.State) | optional |  |
| reason | [string](#string) | optional | (Optional) Detailed information about why a transition to this state happened. Mostly relevant for FAILED stateto further clarify root cause of the failure. |


<a name="netflix.titus.JobStatusUpdate"/>
### JobStatusUpdate


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) | optional |  |
| enableStatus | [bool](#bool) | optional |  |


<a name="netflix.titus.MantisAutoScalingPolicy"/>
### MantisAutoScalingPolicy
Mantis specific auto-scaling policy.
TODO: provide better behavior description

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| increment | [uint32](#uint32) | optional | Single scale-up increment |
| decrement | [uint32](#uint32) | optional | Single scale-down decrement |
| coolDownSecs | [uint64](#uint64) | optional | A minimum amount of time between two auto-scaling actions |
| strategies | [MantisAutoScalingPolicy.StrategiesEntry](#netflix.titus.MantisAutoScalingPolicy.StrategiesEntry) | repeated | A strategy for named resources (memory, network, cpu, etc). |


<a name="netflix.titus.MantisAutoScalingPolicy.RollingCount"/>
### MantisAutoScalingPolicy.RollingCount
???

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| count | [uint32](#uint32) | optional |  |
| of | [uint32](#uint32) | optional |  |


<a name="netflix.titus.MantisAutoScalingPolicy.StrategiesEntry"/>
### MantisAutoScalingPolicy.StrategiesEntry


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) | optional |  |
| value | [MantisAutoScalingPolicy.Strategy](#netflix.titus.MantisAutoScalingPolicy.Strategy) | optional |  |


<a name="netflix.titus.MantisAutoScalingPolicy.Strategy"/>
### MantisAutoScalingPolicy.Strategy
Resource-level consumption evaluation rules

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| reason | [string](#string) | optional | ??? |
| scaleDownBelowPct | [uint32](#uint32) | optional | A resource utilization level, which if dropped below, makes it eligible for the scale-down action |
| scaleUpAbovePct | [uint32](#uint32) | optional | A resource utilization level, which if passed over, makes it eligible for the scale-up action |
| rollingCount | [MantisAutoScalingPolicy.RollingCount](#netflix.titus.MantisAutoScalingPolicy.RollingCount) | optional | A time window over which resource utilization is observed. |


<a name="netflix.titus.MantisClusterSpec"/>
### MantisClusterSpec
Mantis job cluster specification.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| enabled | [bool](#bool) | optional | If job cluster is not enabled, all running jobs are terminated, and no new job is allowed to start. |
| min | [uint32](#uint32) | optional | Minimum number of expected jobs to run. If this constraint is violated, a required number of additional jobsis started based on the job cluster definiton. |
| max | [uint32](#uint32) | optional | Maximum number of jobs allowed to run. A new job can be submitted only if this constraint is not violated. |
| cronSpec | [string](#string) | optional | ??? |
| cronPolicy | [string](#string) | optional | ??? |


<a name="netflix.titus.MantisJobSLA"/>
### MantisJobSLA
Mantis specific job SLA

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| runtimeLimitSecs | [uint64](#uint64) | optional | Maximum amount of time in seconds that the job is allowed to run. Time is measured since the job issubmitted. |
| minRuntimeSecs | [uint64](#uint64) | optional | Mantis job can be auto-terminated if there is no subscription to it. To prevent early terminations,a minimum running time can be specified via this property. |
| durationType | [MantisJobSLA.DurationType](#netflix.titus.MantisJobSLA.DurationType) | optional | For 'Perpetual' type, do not terminate idle jobs. For 'Transient' jobs, the early termination is on, and iscontrolled by 'minRuntimeSecs' property. |
| userProvidedType | [string](#string) | optional | Mantis specific. Users can provide a value to dedup job submissions. Users can “submit-and-connect” to jobssuch that only one job per unique value of this type actually is created. Other requests connect to theexisting job instead of creating another one. |


<a name="netflix.titus.MantisJobSpec"/>
### MantisJobSpec
Mantis job specification.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) | optional | (Required) Arbitrary name, not interpreted by Titus. Does not have to be unique. |
| jobSLA | [MantisJobSLA](#netflix.titus.MantisJobSLA) | optional | (Required) Mantis SLA definition definining constraints for job execution (for example max execution time). |
| parameters | [MantisJobSpec.ParametersEntry](#netflix.titus.MantisJobSpec.ParametersEntry) | repeated | (Optional) Arbitrary set of key/value pairs. |
| subscriptionTimeoutSecs | [uint64](#uint64) | optional | ??? |
| stages | [MantisStage](#netflix.titus.MantisStage) | repeated | List of Mantis stages. The order of the stages is preserved throughtout the whole life of a job. |


<a name="netflix.titus.MantisJobSpec.ParametersEntry"/>
### MantisJobSpec.ParametersEntry


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) | optional |  |
| value | [string](#string) | optional |  |


<a name="netflix.titus.MantisStage"/>
### MantisStage
Mantis job definition consists from a seuence of stages. This entity describes a single stage of a job.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| instances | [TaskInstances](#netflix.titus.TaskInstances) | optional | Number of tasks to run. If scaling policy is defined, the number of tasks created will be always withinmin/max range. |
| containerId | [string](#string) | optional | Reference to a container from a job definition that holds this job specification. If there is no container withthis id, the job submit request is rejected. |
| retryPolicy | [RetryPolicy](#netflix.titus.RetryPolicy) | optional | Task rescheduling policy in case of failure. |
| autoScalingPolicy | [MantisAutoScalingPolicy](#netflix.titus.MantisAutoScalingPolicy) | optional | Job auto-scaling policy |


<a name="netflix.titus.Owner"/>
### Owner
An owner of a job cluster or a job. If this value is not provided explicitly, a caller's email address
from a security context is used for both fields. If the security context does not contain this information,
a request is rejected.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ownerEmail | [string](#string) | optional |  |
| teamEmail | [string](#string) | optional |  |


<a name="netflix.titus.ScalingPolicy"/>
### ScalingPolicy
Job scaling policy. Each auto-scaling engine is expected to define their own syntax for condition/action fields.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| condition | [string](#string) | optional | An expression defining a condition for action execution. The expression format is auto-scaling engine specific.For example: 'avg(CPUUtilization) > 80%' |
| action | [string](#string) | optional | Action to execute if condition evalutes to true. The action syntax is auto-scaling engine specific.For example: 'addInstances 1' |
| durationSecs | [uint64](#uint64) | optional | A duration for the condition to hold true, before an action is executed |
| labels | [ScalingPolicy.LabelsEntry](#netflix.titus.ScalingPolicy.LabelsEntry) | repeated | Additional policy attributes. |


<a name="netflix.titus.ScalingPolicy.LabelsEntry"/>
### ScalingPolicy.LabelsEntry


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) | optional |  |
| value | [string](#string) | optional |  |


<a name="netflix.titus.ServiceClusterSpec"/>
### ServiceClusterSpec
Service job cluster specification. Currently there are no batch specific properties.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |


<a name="netflix.titus.ServiceJobSpec"/>
### ServiceJobSpec
Service job specification.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| instances | [TaskInstances](#netflix.titus.TaskInstances) | optional | Number of tasks to run. If scaling policy is defined, the number of tasks created will be always withinmin/max range. |
| enabled | [bool](#bool) | optional | Job enable/disable status. If job is disabled, auto-scaling policy rules are not applied. |
| scalingPolices | [ScalingPolicy](#netflix.titus.ScalingPolicy) | repeated | Scaling policy associated with this job. |
| retryPolicy | [RetryPolicy](#netflix.titus.RetryPolicy) | optional | Task rescheduling policy in case of failure. |
| containerId | [string](#string) | optional | Reference to a container from a job definition that holds this job specification. If there is no container withthis id, the job submit request is rejected. |


<a name="netflix.titus.StateChange"/>
### StateChange
State transition history.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| state | [string](#string) | optional | (Required) State described by this object. |
| timestamp | [string](#string) | optional | (Required) Time (in RFC-3339 format) at which the transition happened. |


<a name="netflix.titus.Task"/>
### Task
Task is an entity representing running container.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) | optional | (Required) TaskId consists of job id, and task identifier (job specific). |
| taskContext | [Task.TaskContextEntry](#netflix.titus.Task.TaskContextEntry) | repeated | (Required) Includes:* agent execution environment: 'agent.region', 'agent.zone', 'agent.host', 'agent.instance'* job type specific information: 'task.index', 'task.resubmitOf' (id of task which this task is replacing), 'task.originalId' (id of task which this task is a replacement) |
| state | [TaskState](#netflix.titus.TaskState) | optional | (Required) Last known state of this task. |
| stateChanges | [StateChange](#netflix.titus.StateChange) | repeated | (Required) State transition history. |


<a name="netflix.titus.Task.TaskContextEntry"/>
### Task.TaskContextEntry


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) | optional |  |
| value | [string](#string) | optional |  |


<a name="netflix.titus.TaskId"/>
### TaskId
A wrapper type for task id.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) | optional |  |


<a name="netflix.titus.TaskIds"/>
### TaskIds


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) | repeated |  |


<a name="netflix.titus.TaskInstances"/>
### TaskInstances
This data structure is associated with a job, and specifices number of tasks to run (desired). If job
supports auto-scaling (service and Mantis jobs), min/max define constraints. At any point in time
the condition min <= desired <= max must hold true. The desired state may be changed a user, but also may
be changed as a result of auto-scaling action.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| min | [uint32](#uint32) | optional | Minimum number of tasks to run. If not set, defaults to 0. |
| max | [uint32](#uint32) | optional | Maximum number of tasks that can be run. If not set, set to 2^31-1 (Integer.MAX_VALUE). |
| desired | [uint32](#uint32) | optional |  |


<a name="netflix.titus.TaskQuery"/>
### TaskQuery


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| jobId | [string](#string) | optional | (Required) Job id which tasks are queried. |
| page | [Page](#netflix.titus.Page) | optional | (Optional) Requested page number/size. |
| fiterlingCriteria | [TaskQuery.FiterlingCriteriaEntry](#netflix.titus.TaskQuery.FiterlingCriteriaEntry) | repeated | (Optional) Collection of fields and their values for a filter. |
| fields | [string](#string) | repeated | (Optional) If set, only field values explicitly given in this parameter will be returned |


<a name="netflix.titus.TaskQuery.FiterlingCriteriaEntry"/>
### TaskQuery.FiterlingCriteriaEntry


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) | optional |  |
| value | [string](#string) | optional |  |


<a name="netflix.titus.TaskQueryResult"/>
### TaskQueryResult


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| items | [Task](#netflix.titus.Task) | repeated |  |
| pagination | [Pagination](#netflix.titus.Pagination) | optional |  |


<a name="netflix.titus.TaskState"/>
### TaskState


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| state | [State](#netflix.titus.State) | optional |  |
| reason | [string](#string) | optional | (Optional) Detailed information about why a transition to this state happened. Mostly relevant for FAILED stateto further clarify root cause of the failure. |


<a name="netflix.titus.UserIdentity"/>
### UserIdentity
Caller's identity, and their security context.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) | optional | (Required) A unique user identifier. Depending on a user type (a person or an application), the formatof the id may be different. For example a person's id could be encoded as 'person:<email-address>', andapplication id as 'app:<aws-account-id>:<app-name>:<app-stack>'. |
| securityContext | [UserIdentity.SecurityContextEntry](#netflix.titus.UserIdentity.SecurityContextEntry) | repeated | (Optional_ Security context data associated with the user (for example user roles). The following names arereserved, and should be used if applicable:* name - caller's name* email - caller's email address |


<a name="netflix.titus.UserIdentity.SecurityContextEntry"/>
### UserIdentity.SecurityContextEntry


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) | optional |  |
| value | [string](#string) | optional |  |



<a name="netflix.titus.MantisJobSLA.DurationType"/>
### MantisJobSLA.DurationType


| Name | Number | Description |
| ---- | ------ | ----------- |
| Perpetual | 0 |  |
| Transient | 1 |  |

<a name="netflix.titus.State"/>
### State
A state information associated with a job or with a task.
??? It feels we should have separate states for job (ACTIVE, FINISHED, FAILED)

| Name | Number | Description |
| ---- | ------ | ----------- |
| QUEUED | 0 |  |
| DISPATCHED | 1 |  |
| STARTING | 2 |  |
| RUNNING | 3 |  |
| FINISHED | 4 |  |
| FAILED | 5 |  |



<a name="netflix.titus.JobManagementService"/>
### JobManagementService


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| CreateJobCluster | [JobClusterDescriptor](#netflix.titus.JobClusterDescriptor) | [JobClusterId](#netflix.titus.JobClusterId) | Create a new job cluster |
| UpdateJobCluster | [JobCluster](#netflix.titus.JobCluster) | [Empty](#google.protobuf.Empty) | Update a definition of an existing job cluster. |
| RemoveJobCluster | [JobClusterId](#netflix.titus.JobClusterId) | [Empty](#google.protobuf.Empty) | Remove an existing job cluster. |
| FindJobClusters | [JobClusterQuery](#netflix.titus.JobClusterQuery) | [JobClusterQueryResult](#netflix.titus.JobClusterQueryResult) | Return a collection of jobs matching a given criteria. Not provided by TitusMaster (ony TitusAPI) |
| FindJobCluster | [JobClusterId](#netflix.titus.JobClusterId) | [JobCluster](#netflix.titus.JobCluster) | Returns a job with given id. |
| UpdateJobClusterStatus | [JobClusterStatusUpdate](#netflix.titus.JobClusterStatusUpdate) | [Empty](#google.protobuf.Empty) | Mark a job cluster as enabled or disabled. Disabled jobs are not auto-scaled. |
| ObserveJobCluster | [JobClusterId](#netflix.titus.JobClusterId) | [JobClusterNotification](#netflix.titus.JobClusterNotification) | On subscription, sends job cluster entity. After that sends the job cluster definition when updated orjob state chage notifications. The stream is closed by server only when the job cluster is removed. |
| ObserveJobClusters | [Empty](#google.protobuf.Empty) | [JobClusterNotification](#netflix.titus.JobClusterNotification) | Equivalent to ObserveJobCluster, applied to all active job clusters. This stream never completes under normalcircumstances. |
| CreateJob | [JobDescriptor](#netflix.titus.JobDescriptor) | [JobId](#netflix.titus.JobId) | Create a new job |
| UpdateJobInstances | [JobInstancesUpdate](#netflix.titus.JobInstancesUpdate) | [Empty](#google.protobuf.Empty) | Accepts new values for instances of a job. The structure may contain fields that are specific to the enginebeing used for executing the job. For example, the mantis engine may take a “stageNumber” field to apply theinstances values to a specific stage. |
| UpdateJobStatus | [JobStatusUpdate](#netflix.titus.JobStatusUpdate) | [Empty](#google.protobuf.Empty) | Mark a job as enabled or disabled. Disabled jobs are not auto-scaled. |
| FindJobs | [JobQuery](#netflix.titus.JobQuery) | [JobQueryResult](#netflix.titus.JobQueryResult) | Return a collection of jobs matching a given criteria. Not provided by TitusMaster (ony TitusAPI) |
| FindJob | [JobId](#netflix.titus.JobId) | [Job](#netflix.titus.Job) | Returns a job with given id. |
| ObserveJob | [JobId](#netflix.titus.JobId) | [JobChangeNotification](#netflix.titus.JobChangeNotification) | On subscription, sends complete job (definition and active tasks). After that sends distinct job definitionor task state chage notifications. The stream is closed by server only when the job is finished, whichhappens after 'JobFinished' notification is delivered. |
| ObserveJobs | [Empty](#google.protobuf.Empty) | [JobChangeNotification](#netflix.titus.JobChangeNotification) | Equivalent to ObserveJob, applied to all active jobs. |
| KillJob | [JobId](#netflix.titus.JobId) | [Empty](#google.protobuf.Empty) | Kill all running tasks of a job, and than terminate it. |
| KillJobs | [JobIds](#netflix.titus.JobIds) | [Empty](#google.protobuf.Empty) | Kill all jobs given in the request. For partial failures, more information is provided in error reply. |
| FindTask | [TaskId](#netflix.titus.TaskId) | [Task](#netflix.titus.Task) | Get a task with the given id. |
| FindTasks | [TaskQuery](#netflix.titus.TaskQuery) | [TaskQueryResult](#netflix.titus.TaskQueryResult) | Return a collection of tasks belonging to a job specified in the 'TaskQuery' request, matching a given criteria.Not provided by TitusMaster (ony TitusAPI) |
| KillTask | [TaskId](#netflix.titus.TaskId) | [Empty](#google.protobuf.Empty) | Kill a task with given id. Depending on job type, the task might be immediately restarted/ replaced with a new one. |
| KillTasks | [TaskIds](#netflix.titus.TaskIds) | [Empty](#google.protobuf.Empty) | Kill a collection of tasks. Tasks do not have to belong to the same job.For partial failures, more information is provided in error reply. |



<a name="scalar-value-types"/>
## Scalar Value Types

| .proto Type | Notes | C++ Type | Java Type | Python Type |
| ----------- | ----- | -------- | --------- | ----------- |
| <a name="double"/> double |  | double | double | float |
| <a name="float"/> float |  | float | float | float |
| <a name="int32"/> int32 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint32 instead. | int32 | int | int |
| <a name="int64"/> int64 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint64 instead. | int64 | long | int/long |
| <a name="uint32"/> uint32 | Uses variable-length encoding. | uint32 | int | int/long |
| <a name="uint64"/> uint64 | Uses variable-length encoding. | uint64 | long | int/long |
| <a name="sint32"/> sint32 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int32s. | int32 | int | int |
| <a name="sint64"/> sint64 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int64s. | int64 | long | int/long |
| <a name="fixed32"/> fixed32 | Always four bytes. More efficient than uint32 if values are often greater than 2^28. | uint32 | int | int |
| <a name="fixed64"/> fixed64 | Always eight bytes. More efficient than uint64 if values are often greater than 2^56. | uint64 | long | int/long |
| <a name="sfixed32"/> sfixed32 | Always four bytes. | int32 | int | int |
| <a name="sfixed64"/> sfixed64 | Always eight bytes. | int64 | long | int/long |
| <a name="bool"/> bool |  | bool | boolean | boolean |
| <a name="string"/> string | A string must always contain UTF-8 encoded or 7-bit ASCII text. | string | String | str/unicode |
| <a name="bytes"/> bytes | May contain any arbitrary sequence of bytes. | string | ByteString | str |
