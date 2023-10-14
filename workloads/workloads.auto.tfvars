
##common variables  
## Need to pull this variables from tf output from previous platform stage
project_id = "umeshkumhar"
region     = "us-central1"

## this is required for terraform to connect to GKE master and deploy workloads
cluster_name   = "demo-cluster"
cluster_location = "us-central1"
# private cluster will use connect gateway to connect GKE master
private_cluster = true

#######################################################
####    APPLICATIONS
#######################################################

## GKE environment variables
namespace       = "myray"
service_account = "myray-system-account"
enable_tpu      = false
enable_autopilot = true    # If false, creates GKE standard cluster # Needed to install or not nvidia driver # If = true, functionality not created yet.



## JupyterHub variables
create_jupyterhub           = true    # Default = true, creates JupyterHub
create_jupyterhub_namespace = false   # Default = false, uses default ray namespace "myray". 
jupyterhub_namespace        = "myray" # If create_jupyterhub_namespace = false, then keep this same as namespace (from GKE variables)

