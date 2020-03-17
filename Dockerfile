FROM jenkins/jenkins:lts-alpine

ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"

RUN /usr/local/bin/install-plugins.sh pipeline-multibranch-defaults
RUN /usr/local/bin/install-plugins.sh github-branch-source
RUN /usr/local/bin/install-plugins.sh workflow-aggregator
