FROM registry.access.redhat.com/jboss-fuse-6/fis-karaf-openshift
MAINTAINER UPS ICC <UPSICC@ups.com>
LABEL java-version=1.8.101
LABEL description="A simple Java main class application that publishes a configurable MQTT load to a server."

USER root

# Build & install mqtt-broker-tester
git clone 

# Make /home/jboss world-accessible
RUN chmod -R a+rx /home/jboss

# Copy Fuse 6.2.1 golden copy
ADD jboss-fuse-6.2.1.redhat-084 /home/jboss/jboss-fuse-6.2.1.redhat-084/

# Create a symlink to the golden copy directory
RUN ln -sf /home/jboss/jboss-fuse-6.2.1.redhat-084 /home/jboss/karaf

# Make karaf script executable
RUN chmod -R a+rx /home/jboss/karaf/bin

# Make karaf home, deploy, data and etc directories, and etc/*.cfg files world-writeable for OpenShift
RUN chmod a+rwx /home/jboss/karaf
RUN chmod a+rwx /home/jboss/karaf/deploy
RUN chmod -R a+rwx /home/jboss/karaf/data
RUN chmod a+rwx /home/jboss/karaf/etc
RUN chmod a+rw /home/jboss/karaf/etc/*.cfg

# Make etc/config.properties writable to avoid warnings about unwritable shutdown command
RUN chmod a+rw /home/jboss/karaf/etc/config.properties

USER 1001