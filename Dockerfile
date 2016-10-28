FROM registry.access.redhat.com/jboss-eap-6/eap64-openshift
MAINTAINER PVM

RUN curl http://10.64.64.144/adminsoft/OSE/src/ROOT3.war -o $JBOSS_HOME/standalone/deployments/ROOT.war
RUN curl http://10.64.64.144/adminsoft/OSE/src/AMAXGrid3.war -o $JBOSS_HOME/standalone/deployments/AMAXGrid.war
RUN curl http://10.64.64.144/adminsoft/OSE/src/set_MYSQLDBIP_ds.sh -o /tmp/set_MYSQLDBIP_ds.sh
RUN chmod 755 /tmp/set_MYSQLDBIP_ds.sh
RUN /tmp/set_MYSQLDBIP_ds.sh

EXPOSE 8080
