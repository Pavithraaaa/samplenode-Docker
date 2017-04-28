
chown -R jenkins /home/
mkdir /home/demo
cp -vraf /var/lib/jenkins/workspace/Demo/* /home/demo/
touch /home/demo/Dockerfile

printf "FROM node:boron
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY . /usr/src/app
RUN npm install
RUN npm build
EXPOSE 5000
CMD [ 'npm', 'start', 'build' ]" >> /home/demo/Dockerfile
