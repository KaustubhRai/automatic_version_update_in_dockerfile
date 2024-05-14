# workflows_testing

a workflow created for checking the version numbers in dockerfile, if a env variable is created with a particular version number or if there is any version number for any software in a dockerfile. 

this workflow can be used to check every sunday or anytime you want.  the latest version number for that library/software. 

idea came because, for normal repos github has a workflow called depandabot that automatically updates the version number in pacakage.json/pacakge.lock.json if a new version is available. noticed that, it did not work for Dockerfiles. it solves that problem.

have fun with the workflow file and customize it to your needs. 

<br>

- currently the workflow file, checks the version numnber of the application present in the Dockerfile and checks online the latest version of that application. and if a new version is available, it creates a issue with a title and a body that's easily understandbale. 

- requires a github PAT, Github>Settings>Developer Settings>Personal Access Tokens>Generate New Token. 
have permissions set in such a way that it can access atleast that repo, and read it. have expiry set of the token to your liking. 
and add that token in the repo's setting. Repo Settings>Secrets & Variables>Actions>Repository secrets>New Repository secret> Name as "REPO_ACCESS_TOKEN" and the value as the token you just got from github PAT
