# SSH mkconfig

## Emvironment

* ruby 1.9.3p547

## How to use


```
$ ./ssh_mkconfig.rb owner@192.168.x.xxx -p 22222 -i ~/.ssh/identify_file -n hostname >> path/to/.ssh/config
```

-i ... write identify file.  

-p ... write Port num.  

-n <Required> ... write hostname for easy connection.  
Default value is server's real hostname. (ex : 192.168.x.xx)

then, you can connect your server this command  

```
$ ssh hostname
```
