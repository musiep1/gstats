FROM registry.access.redhat.com/jboss-eap-6/eap64-openshift
MAINTAINER PVM

RUN curl http://10.64.64.144/adminsoft/OSE/src/ROOT4.war -o $JBOSS_HOME/standalone/deployments/ROOT.war
RUN curl http://10.64.64.144/adminsoft/OSE/src/AMAXGrid4.war -o $JBOSS_HOME/standalone/deployments/AMAXGrid.war
RUN curl http://10.64.64.144/adminsoft/OSE/src/mysql-ds4.xml -o $JBOSS_HOME/standalone/deployments/mysql-ds.xml

EXPOSE 8080

