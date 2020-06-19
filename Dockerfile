FROM centos:latest

RUN yum install wget net-tools git -y
RUN wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
RUN rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
RUN yum install java -y
RUN yum install jenkins -y
RUN echo "jenkins ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
RUN yum install python3 -y

CMD java -jar /usr/lib/jenkins/jenkins.war



 
