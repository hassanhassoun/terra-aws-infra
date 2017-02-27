- This version is ready for deployment:

```sh
$git clone  git@github.com:hhassoun/terra-aws-infra.git
$cd terra-aws-infra
#Replace with AWS access key and you public IP address
$terraform plan -var 'access_key=XXXXXXX' -var 'secret_key=XXXXXXXWqf' -var 'myip=127.0.0.1'
$terraform apply -var 'access_key=XXXXXXX' -var 'secret_key=XXXXXXXWqf' -var 'myip=127.0.0.1'
```
![Alt text](/ebeanstalkapp.png?raw=true "App Diagram")
