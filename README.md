# IBM Power Virtual Server in IBM Cloud

This example is part of an overall scenario to demonstrate the concept of
enterprise application modernization by transition a historically monolithic
application running on IBM Power Systems and refacotring it into a DB tier
running on an AIX virtual machine (VM) and running the web tier as a container
atop a container orchestration technology (e.g., Red Hat OpenShift).

In particular, this example creates an AIX VM in the IBM Power Virtual
Server in IBM Cloud. 

If your Kubernetes cluster (e.g., OpenShift) is running external to the
IBM Power Virtual Server cloud, you will need to either provision a
DirectLink connection between the cloud infrastructures or you will need
to ensure the AIX VM is created on a public network--ultimately so that
the container-based web application can talk to the AIX VM.

To run the example, you will need to:

1. Clone this Git repository
2. [Download and configure](https://github.com/IBM-Cloud/terraform-provider-ibm) the IBM Cloud Terraform provider (minimally v0.18.0 or later)
3. Obtain your [IBM Cloud API key](https://cloud.ibm.com) (needed for step #6 if youre not using Schematics)

 Note!: You can skip steps 2 and 3 and use IBM Cloud Schematics service

5. Upload your public SSH key to the IBM Power Virtual Server cloud (the name is needed for step #6)
6. Update the variables.tf file to suit your needs

Next, you can run the example by invoking...

The planning phase (validates the Terraform configuration)

```shell
terraform init
terraform plan
```

The apply phase (provisions the infrastructure)

```shell
terraform apply
```

The destroy phase (deletes the infrastructure)

```shell
terraform destroy
```

