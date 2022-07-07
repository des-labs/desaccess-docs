## Email Lists

There are three email lists hosted by NCSA for use by the DES Labs team. They are managed at https://lists.ncsa.illinois.edu.

The desaccess-public and desaccess-collab lists can be used to email everyone with an account on the public or private (a.k.a collaboration) Oracle database. These lists each include over 1000 individuals.

### desaccess-admins

   The `desaccess-admins@lists.ncsa.illinois.edu` email list is used by the DESDM team to receive emails from the general public. It is used by the help request systems described elsewhere in this documentation.

### desaccess-public

   The `desaccess-public@lists.ncsa.illinois.edu` email list subscribers include all users registered in the public DESaccess system (i.e. registered in the public Oracle database system that serves as the DESaccess authentication backend). It is automatically periodically updated by two components as described below.
   
   * The email list configuration includes an external data source option (https://lists.ncsa.illinois.edu/lists/edit_list_request/desaccess-public/data_source) which we configured to point to a password protected URL that we serve (https://des.ncsa.illinois.edu/email-list/desaccess_email_list.txt). This URL is a text file that contains the desired subscriber list in the required format for the email list system.
   
   * The DESaccess deployment includes [a separate webserver specifically for serving this email subscriber list file](https://gitlab.com/des-labs/kubernetes/-/blob/main/charts/desaccess/templates/deployment.yaml#L435-477). The email subscriber list file itself is generated periodically by [a webcron job implemented in this function](https://github.com/des-labs/des-jobhandler/blob/master/main.py#L196-L238) that queries the Oracle database for the current list of user accounts.

### desaccess-collab

   The `desaccess-collab@lists.ncsa.illinois.edu` email list subscribers include all collaboration members registered in the private Oracle database system that serves as the DESaccess authentication backend.
   
   * The email list configuration includes an external data source option (https://lists.ncsa.illinois.edu/lists/edit_list_request/desaccess-collab/data_source) which we configured to point to a password protected URL that we serve (https://deslabs.ncsa.illinois.edu/email-list/desaccess_email_list.txt). This URL is a text file that contains the desired subscriber list in the required format for the email list system.
   
   * The DESaccess deployment includes [a separate webserver specifically for serving this email subscriber list file](https://gitlab.com/des-labs/kubernetes/-/blob/main/charts/desaccess/templates/deployment.yaml#L435-477). The email subscriber list file itself is generated periodically by [a webcron job implemented in this function](https://github.com/des-labs/des-jobhandler/blob/master/main.py#L196-L238) that queries the Oracle database for the current list of user accounts.
