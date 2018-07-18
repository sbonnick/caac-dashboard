# \<caac-dashboard\>

![Screenshot](images/caac_dashboard.PNG?raw=true "Dashboard Screenshot")

## Configuring the Dashboard

Add a `env.json` file at the root of hosted app

`uri`: The uri to a hosted caac proxy service

`workitems`: a list of initiatives and features used to gather userstories

`aggregates`: defines a json object describing multiple aggregated dimensions. Each dimension will be a new widget on the page. Currently only tag values are supported. Any, all, or none operations are supported on the dimensions list

```json
{
    "uri": "http://caacproxy",
    "workitems": ["I####", "F####"],
    "aggregates": {
        "devops": {
            "any": { "tags": [ "devops", "defect" ] },
            "label": "DevOps"
        },
        "por": {
            "none": { "tags": [ "devops", "defect" ] },
            "label": "Plan of Record"
        }
    }
}
```

## Install the Polymer-CLI

First, make sure you have the [Polymer CLI](https://www.npmjs.com/package/polymer-cli) installed. Then run `polymer serve` to serve your application locally.

## Viewing Your Application

```
$ polymer serve
```

## Building Your Application

```
$ polymer build
```

This will create builds of your application in the `build/` directory, optimized to be served in production. You can then serve the built versions by giving `polymer serve` a folder to serve from:

```
$ polymer serve build/default
```
