# Y42_Docker_Demo

this is a demo project which demonstrates simple "Hello Y42 this my Docker Demo application"
messege on docker port local port 80.

to do so simple node.js  module express is used. it is available through npm registry

to build project run ./buid.sh

note if bash return ./build.sh: Permission denied  please change permissions by running "chmod u+x build.sh"

after building run ./deploy.sh to deploy locally using minikube ( note : Minikube need to be installed before)


successfully validation can be verified with following steps

1.  get local kubernetes IP with "kubectl cluster-info"  command
2.  get forwarded port number of y42demos using "kubectl get svc"
3.  then "curl http://$kubernetesIP:application port"
4.  should return "Hello Y42 this my Docker Demo application!"