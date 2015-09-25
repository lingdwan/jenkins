## Jenkins ##

This is the base jenkins docker image which contains some useful jenkins plugin, it can be started directly.

	docker run --rm -it --name jenkins -p 8080:8080 lingd/jenkins

It can also be used as parent to build downstream jenkins images by putting your configuration into `JENKINS_HOME`, it will be triggered by `ONBUILD`

	ONBUILD COPY JENKINS_HOME $JENKINS_HOME
Mostly in your `Dockerfile`

	FROM lingd/jenkins

## Reference ##

* larrycai/jenkins image : https://github.com/larrycai/docker-jenkins
* Official jenkins image : http://jenkins-ci.org/content/official-jenkins-lts-docker-image
