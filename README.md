# operator_sdk_playground

To instatiate a operator project run the new operator [bash-script](https://github.com/canit00/operator_sdk_playground/blob/master/scripts/) passing the project name of your choice:

```
scripts/new_op_project.sh operator.example
```

## Terminology

*[Custom Resource](https://kubernetes.io/docs/concepts/extend-kubernetes/api-extension/custom-resources/#custom-resources)*:

> A custom resource is an extension of the Kubernetes API that is not necessarily available on every Kubernetes cluster. In other words, it represents a customization of a particular Kubernetes installation.

*[CRD Custom Resource Definition](https://kubernetes.io/docs/concepts/extend-kubernetes/api-extension/custom-resources/#customresourcedefinitions)*:

> The CustomResourceDefinition API resource allows you to define custom resources. Defining a CRD object creates a new custom resource with a name and schema that you specify. The Kubernetes API serves and handles the storage of your custom resource.

*[Controller](https://kubernetes.io/docs/concepts/extend-kubernetes/api-extension/custom-resources/#custom-controllers)*:

> A custom controller is a controller that users can deploy and update on a running cluster, independently of the cluster’s own lifecycle. Custom controllers can work with any kind of resource, but they are especially effective when combined with custom resources. The Operator pattern is one example of such a combination. It allows developers to encode domain knowledge for specific applications into an extension of the Kubernetes API.

*Operator*:

A set of application specific controllers deployed on Kubernetes and managed via kubectl and the Kubernetes API.

* Read more about Kubernetes [API](https://kubernetes.io/docs/concepts/overview/kubernetes-api/)
* Kubernetes versioning for [CustomResourceDefinitions](https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definition-versioning/)
