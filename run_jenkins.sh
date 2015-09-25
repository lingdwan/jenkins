ln -s /c/Users/ewalili/git/ git
cd ~/git/docker

docker run --rm -it --name jenkins -p 8080:8080 \
	-v $PWD/jenkins:/opt/jenkins/data/jobs/longjobs/workspace \
	 lingd/jenkins