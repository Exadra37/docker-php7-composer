# HOW TO INSTALL

Docker needs to be installed in our computer in order to use this package, thus if is not, please follow  the
[official documentation](https://docs.docker.com/engine/installation/) and after return here.


## Using Docker


### Install With Latest Php Version

##### Type in the shell:

```bash
sudo docker run --rm -it exadra37-docker-images/php7-composer
```

### Install With Specific Php Version

##### Type in the shell:

```bash
sudo docker run --rm -it exadra37-docker-images/php7-composer:7.0
```

### Install Expected output

```bash
   ______
  / ____/___  ____ ___  ____  ____  ________  _____
 / /   / __ \/ __ `__ \/ __ \/ __ \/ ___/ _ \/ ___/
/ /___/ /_/ / / / / / / /_/ / /_/ (__  )  __/ /
\____/\____/_/ /_/ /_/ .___/\____/____/\___/_/
                    /_/
Composer version 1.5.1 2017-08-09 16:07:22

Usage:
  command [options] [arguments]

... # stripping remaining output

```

If we see a similar output we are in the right track.


## Bash Script Alias

So instead of using the above long commands to invoke composer from docker we can alias it to use it as we normally do.

### For ZSH Shell

##### Type in the shell:

```bash
echo 'alias composer="sudo docker run --rm -it -v $PWD:/home/composer/app exadra37-docker-images/php7-composer"' >> ~/.zshrc && . ~/.zshrc
```

### For Bash Shell

##### Type in the shell:

```bash
echo 'alias composer="sudo docker run --rm -it -v $PWD:/home/composer/app exadra37-docker-images/php7-composer"' >> ~/.bashrc && . ~/.bashrc
```

The alias should be now working...

##### Type in the shell:

```bash
composer --help
```

##### Expected Output:

```bash
Usage:
  help [options] [--] [<command_name>]

Arguments:
  command                        The command to execute
  command_name                   The command name [default: "help"]

Options:
      --xml                      To output help as XML
      --format=FORMAT            The output format (txt, xml, json, or md) [default: "txt"]
      --raw                      To output raw command help
  -h, --help                     Display this help message
  -q, --quiet                    Do not output any message
  -V, --version                  Display this application version
      --ansi                     Force ANSI output
      --no-ansi                  Disable ANSI output
  -n, --no-interaction           Do not ask any interactive question
      --profile                  Display timing and memory usage information
      --no-plugins               Whether to disable plugins.
  -d, --working-dir=WORKING-DIR  If specified, use the given directory as working directory.
  -v|vv|vvv, --verbose           Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug

Help:
  The help command displays help for a given command:

    php /usr/local/bin/composer help list

  You can also output the help in other formats by using the --format option:

    php /usr/local/bin/composer help --format=xml list

  To display the list of available commands, please use the list command.

```


---

[<< previous](./../introduction/why_exists.md) | [next >>](use.md)

[HOME](./../../README.md)
