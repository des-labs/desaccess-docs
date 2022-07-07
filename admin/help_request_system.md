## DES Help Request System

### General request form on Data Release website

The [The Dark Energy Survey Data Management Project](https://opensource.ncsa.illinois.edu/confluence/display/DESDM/) at NCSA has a [help request system](https://opensource.ncsa.illinois.edu/confluence/display/DESDM/Requesting+Help+and+More) to efficiently route questions to the appropriate team member and track the progress of the request.

The general public should use the [DES help request form](https://des.ncsa.illinois.edu/help) to communicate their issue. This source code for the deployment powering this form is at https://github.com/des-labs/des_ncsa. When submitted, the following workflow is triggered:

1. The user receives a email that both verifies they are real and not a spam bot and confirms that their submission was received.

2. When the user clicks the confirmation link, two actions occur:

   1. A Jira issue is created in [the DESRELEASE project](https://opensource.ncsa.illinois.edu/jira/projects/DESRELEASE/issues) and assigned to the default assignee via [the deployment Helm chart parameters](https://gitlab.com/des-labs/kubernetes/-/blob/main/charts/desdm-public/values.yaml#L6). The Jira issue should be assigned to the relevant DESDM team member when the default assignee receives a notification email of the new Jira issue.

   2. An email is sent to the desaccess-admins@lists.ncsa.illinois.edu email list. This provides a convenient way for an email exchange to occur with the requestor, by using "reply all" in all responses.

The desaccess-admins@lists.ncsa.illinois.edu email list subscribers should include all multiple DESDM team members so that requests are less likely to slip through the cracks and be ignored. For example, if the default Jira assignee is on vacation then it is the only way others will be notified so that they can handle the issue.

### DESaccess help request form for authenticated users

There is another help request form within the DESaccess website, both public and private interfaces, where authenticated users can request help. This form does not send a confirmation email because there is no risk of spam submissions. Jira issues are generated in [the DESRELEASE project](https://opensource.ncsa.illinois.edu/jira/projects/DESRELEASE/issues) and assigned to [the default assignee configured in the deployment Helm chart](https://gitlab.com/des-labs/kubernetes/-/blob/main/charts/desaccess/values.yaml#L54). An email is also sent to the desaccess-admins@lists.ncsa.illinois.edu email list.
