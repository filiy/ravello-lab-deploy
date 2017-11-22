# ravello-lab-deploy
Some scripts and Readmes on quickly deploying labs in cloud.ravellosystems.com/
***
## Clone Repo

First thing you will need to do is clone https://github.com/ryran/ravshello to get the ravshello script locally.

Add the ravshello folder to your path:
```shell
[phil@c3po github]$ cd ravshello/
[phil@c3po ravshello]$ export PATH="$(pwd)":$PATH
```
## Run Script
Run the basic ravello-deploy-script.sh script that will generate a deploy.file then it runs the ravshello 
command using the deploy.file as input:

![script-run](/img/script-run-1.png)

You will need to log in with your ravello login details
This will spin up applications based on blueprint name given on the number of apps given.

You can batch grant tokens to applications by selecting your apps in the ravello websit gui and clicking more then grant ephemreal access. You can then export to CSV to give out to lab students 

![Text2](/img/batch-grant-token.png)

You can also use the select all VMs to batch start/stop/extend time on the applications

# TODO
***
+ App names are showing up weird. This has something to do with the nickname feature in ravshello
+ Can put username/pass into ravshello config file somewhere so you don't need to keep typing creds, not sure exactly how to so this
