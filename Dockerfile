FROM resin/rpi-raspbian:jessie

# Install OpenJDK 7
# Remove package lists to free up space
# Install the UPS Support
RUN apt-get update	&& apt-get install -y openjdk-7-jdk	&& rm -rf /var/lib/apt/lists/* & dpkg -i ups/upsd_1.2-1.deb

#ADD . /App/
#RUN mv /App/start.sh /start.sh

CMD ["bash", "start.sh"]
