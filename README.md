# SSH mkconfig

## Emvironment

* ruby 1.9.3p547

## How to use

```
$ ./ssh_mkconfig.rb owner@192.168.x.xxx -p 22222 -i ~/.ssh/identify_file -n hostname
```

-i ... write identify file.  

-p ... write Port num.  

-n <Required> ... write hostname for easy connection.  

then, you can connect your server this command  

```
$ ssh hostname
```
