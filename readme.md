# Summary
This repository contains a vagrant environment for testing the incompatibility between the new puppet server and foreman-proxy.


## Install vagrant
```
sudo apt-get install vagrant
```

## Install r10k for vagrant 
```
vagrant plugin install vagrant-r10k
```

## Run vagrant
```
vagrant up
```

### The default IP is: 
(http://192.168.33.10)

## To connect to the vm via ssh
```
vagrant ssh
```

## Run
```
sudo puppetserver foreground
```

## Observe
See the output from the puppet server which demonstrates a problem with the ruby gems.
