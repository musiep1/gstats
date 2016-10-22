FROM registry.access.redhat.com/jboss-eap-6/eap64-openshift
MAINTAINER PVM

RUN curl http://nc2plenv01.lnc.com/adminsoft/OSE/src/ROOT2.war -o $JBOSS_HOME/standalone/deployments/ROOT.war
RUN curl http://nc2plenv01.lnc.com/adminsoft/OSE/src/AMAXGrid2.war -o $JBOSS_HOME/standalone/deployments/AMAXGrid.war
RUN curl http://nc2plenv01.lnc.com/adminsoft/OSE/src/mysql-ds2.xml -o $JBOSS_HOME/standalone/deployments/mysql-ds.xml

EXPOSE 8080
