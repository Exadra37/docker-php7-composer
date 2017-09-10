# HOW TO USE

Any developer with zero experience of Docker can take advantage of using Composer work-flow from a Docker Container.

Assuming that the [Install Intructions](install.md) have been followed, including the
[Bash Script Alias](install.md#bash-script-alias) creation, we can now use composer as normally we are used to work with it.

## For Specific Php Version

Normally when we invoke `composer` from our shell it will run using the last stable Php version, but we will always want to run it with the exact same Php version being used by our project, thus we have a way to specify it...

```
composer --php 7.0 <composer-command-here>
```

---

[<< previous](https://gitlab.com/exadra37-docker-images/php7/composer/blob/master/docs/how-to/install.md) | [next >>](https://gitlab.com/exadra37-docker-images/php7/composer/blob/master/CONTRIBUTING.md)

[HOME](https://gitlab.com/exadra37-docker-images/php7/composer/blob/master/README.md)
