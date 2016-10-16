# MQTT Load Generator

A simple Java main class application that publishes a configurable MQTT load to a server. Use the provided template OpenShift/template.json to quickly build & deploy to OpenShift. The deployment requires a ConfigMap named "mqtt-load-generator" in the application namespace. Modify the provided "properties/mqtt-load-generator.properties" as per need, and expose it as a ConfigMap.

To create the ConfigMap, change directory to the property file locatoin and run:

    oc create configmap mqtt-load-generator-config --from-file=mqtt-load-generator.properties
