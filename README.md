# Docker-Vue
Template to dockerize Vue.js Apps.

Use this template to dockerize a Vue.js Application or any front-end application.

## Prerequisites
The Dockerfile is expecting a script named "build". And the build output is expected to be found in a folder called "dist".

## How to use
Copy the nginx.conf and Dockerfile in the root of the solution.

Build the image
docker build -t vue-app-1 .

Run the image
docker run -d -p 80:80 vue-test-1

## Optional changes
The default node version is 14.18