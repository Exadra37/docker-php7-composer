# COMPOSER PHP7 DOCKER IMAGE

A Docker Image to run Composer for Php7 versions without using root user in order to avoid permissions issues between
container and host.


## MENU

* **Introduction**
    + [Why Exists?](https://gitlab.com/exadra37-docker-images/php7/composer/blob/master/docs/introduction/why_exists.md)
    + [What Is It?](https://gitlab.com/exadra37-docker-images/php7/composer/blob/master/docs/introduction/what_is_it.md)
    + [When To use It?](https://gitlab.com/exadra37-docker-images/php7/composer/blob/master/docs/introduction/when_to_use_it.md)
* **How To**
    + [Install](https://gitlab.com/exadra37-docker-images/php7/composer/blob/master/docs/how-to/install.md)
    + [Use](https://gitlab.com/exadra37-docker-images/php7/composer/blob/master/docs/how-to/use.md)
    + [Report an Issue](https://gitlab.com/exadra37-docker-images/php7/composer/blob/master/docs/how-to/create_an_issue.md)
    + [Create a Branch](https://gitlab.com/exadra37-docker-images/php7/composer/blob/master/docs/how-to/create_branches.md)
    + [Open a Merge Request](https://gitlab.com/exadra37-docker-images/php7/composer/blob/master/docs/how-to/create_a_merge_request.md)
    + [Uninstall](https://gitlab.com/exadra37-docker-images/php7/composer/blob/master/docs/how-to/uninstall.md)
* **Road Map**
    + [Milestones](https://gitlab.com/exadra37-docker-images/php7/composer/milestones)
    + [Overview](https://gitlab.com/exadra37-docker-images/php7/composer/boards)
* **About**
    + [Author](https://gitlab.com/exadra37-docker-images/php7/composer/AUTHOR.md)
    + [Contributors](https://gitlab.com/exadra37-docker-images/php7/composer/CONTRIBUTORS.md)
    + [Contributing](https://gitlab.com/exadra37-docker-images/php7/composer/CONTRIBUTING.md)
    + [License](https://gitlab.com/exadra37-docker-images/php7/composer/LICENSE)


## SUPPORT DEVELOPMENT

If this is useful for you, please:

* Share it on [Twitter](https://twitter.com/home?status=Try%20%23DockerPhp7Composer%20to%20manage%20dependencies%20with%20%23composer%20https%3A//gitlab.com/exadra37-docker-images/php7/composer%20by%20%40Exadra37%20%23phpapp%20%23php%20%23php7%20%23phpdeveloper%20%23laravel) or in any other channel of your preference.
* Consider to [offer me](https://www.paypal.me/exadra37) a coffee, a beer, a dinner or any other treat 😎.


## EXPLICIT VERSIONING

This repository uses [Explicit Versioning](https://gitlab.com/exadra37-versioning/explicit-versioning) schema.


## BRANCHES

Branches are created as demonstrated [here](docs/how-to/create_branches.md).

### Permanent Branches

* `master` - Issues and milestones branches will be merged here.
* `latest` - The latest docker images for any supported version are created from this branch.

### Temporary Branches

* `dev-php:<version>` - A branch for active development of each supported Php7 version for the Docker Image.
* `4-fix-php7.0-build` (issue-number-title) - each issue will have is own branch for development.
* `milestone-12_add-cache` (milestone-number_title) - all Milestone issues will start, track and merged here.
