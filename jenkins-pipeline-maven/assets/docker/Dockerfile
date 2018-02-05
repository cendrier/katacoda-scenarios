FROM jenkinsci/blueocean
LABEL Maintainers="Damien DUPORTAL<damien.duportal@gmail.com>"

# Copy Auto-Configuration Groovy scripts
COPY ./ref /usr/share/jenkins/ref

ENV JAVA_OPTS="-XshowSettings:vm -Djenkins.install.runSetupWizard=false -Xms256m -Xmx512m"
