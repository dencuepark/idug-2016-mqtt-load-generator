# MQTT Load Generator

A simple Java main class application that publishes a configurable MQTT load to a server. Use the provided template "OpenShift/template.json" to quickly build & deploy to OpenShift. The deployment requires a ConfigMap named "mqtt-load-generator-config" in the application namespace. Modify the provided "properties/mqtt-load-generator.properties" as per need, and expose it as a ConfigMap.

To create the ConfigMap, change directory to the property file location and run:

    oc create configmap mqtt-load-generator-config --from-file=mqtt-load-generator.properties
    
A fixed throughput is generated on a per-connection basis, and the load starts applying when the connection with the server is successfully established. The connections are made to the 4 brokers in a round-robin fashion, and *all 4 of them* must be specified. If only a single broker is used, pass that broker's url 4 times.