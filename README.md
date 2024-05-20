This is the Helm chart for the Cortex product of Selfuel Cloud.

## Prerequisites

- Kubernetes 1.16+
- Helm 3.0+

## Installing the Chart

To install the chart with the release name `my-release`:

```bash
helm install --name my-release ./helm-charts/cortex helm-charts
```

## Installing the Chart with Custom Values

You can install the chart with custom values by creating a
custom [values.yaml](https://github.com/Selfuel/helm-charts/blob/main/cortex/values.yaml) file and passing it to
the `helm install` command.

```bash
helm install --name my-release -f custom-values.yaml ./helm-charts/cortex helm-charts
```

## Configuration

The following table lists the required parameters for the Cortex chart.

| Parameter                                   | Description                                                             |
|---------------------------------------------|-------------------------------------------------------------------------|
| `organization.id`                           | The ID of your Selfuel Cloud Organization.                              |
| `executor.ingress.host`                     | The host of the Executor Service to connect with Selfuel Cloud.         |
| `executor.secret.PROMETHEUS_CLIENT_ADDRESS` | The Prometheus Client Address for gathering monitoring metrics.         |
| `executor.secret.RUNNER_HOST`               | The host of Cortex Runners to connect your applications.                |
| `certManager.email`                         | The email required for using cert-manager to generate SSL certificates. |
| `runnerHealthchecker.ingress.host`          | The host of the Runner Healthchecker service.                           |

## Uninstalling the Chart

To uninstall/delete the `my-release` deployment:

```bash
helm delete my-release
```