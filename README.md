# helm-chart-setup
Reusable helm chart template setup

## What is this ?
This project represents Helm umbrella chart template. It contains following:
- example-chart - general chart which is used just to override default values for contained charts (first, second) and provide common templates. This chart also defines dependency on external chart: bitnami/spark
- first - concrete chart which deploys nginx app with specific initial values and internal templates
- second - concrete chart which deploys nginx app with specific initial values and internal templates

## How does the structure of umbrella chart look like ?
```
.
├── Chart.yaml
├── charts
│   ├── first
│   │   ├── Chart.yaml
│   │   ├── templates
│   │   │   ├── _helpers.tpl # set of helper templates for first chart
│   │   │   ├── deployment.yaml
│   │   │   └── service.yaml
│   │   ├── values.yaml # initial values for first chart
│   │   └── values_prod.yaml # initial prod values for first chart
│   ├── second
│   │   ├── Chart.yaml
│   │   ├── templates
│   │   │   ├── _helpers.tpl # set of helper templates for second chart
│   │   │   ├── deployment.yaml
│   │   │   └── service.yaml
│   │   ├── values.yaml # initial values for second chart
│   │   └── values_prod.yaml # initial prod values for second chart
│   └── spark-3.0.2.tgz # external dependency chart
├── templates
│   └── _common.tpl # set of common templates applicable to internal charts
└── values.yaml # values which override internal chart values and define global values
```

## How to run umbrella chart ? 

To verify/debug helm templating, use following command:
```
helm template myrelease example-chart/
```

To install helm umbrella chart (and its subcharts), use following command:
```
helm install myrelease example-chart/
```