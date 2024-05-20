This is the Helm chart for the Cortex product of Selfuel Cloud.

## Prerequisites

- Kubernetes 1.16+
- Helm 3.0+

## Installing the Chart

To install the chart with the release name `my-release`:

```bash
helm install --name my-release ./helm-charts/cortex# helm-charts
```

## Uninstalling the Chart

To uninstall/delete the `my-release` deployment:

```bash
helm delete my-release
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
 