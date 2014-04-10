TYPO3CMS-Reviewer
=================

This project tries to provide an easy & also quick way to review/debug/profile the TYPO3 CMS project.


## Already solved Features/Tasks

- Initial Packer Configuration


## Planned Features (Test Environment)

- Preconfigured ready2use Vagrantbox
	- for
		- VMware Fusion (OSX)
		- Virtualbox (OSX, Windows, Linux)
		- (HyperV (Windows >= 8.1))
		- (VMware Workstation (Windows)
	- included Packer Configuration file(s) (if you want to create custom boxes)
	- included Chef Cookbooks (each of them as standalone git-repo)
	- Fedora Linux as default

## Planned Software/Configuration

- Apache or Nginx
- MySQL or MariaDB
- Constantly up2date PHP version
- Mailcatcher (http://mailcatcher.me) to easily catch sent mails
- Support for Umlaute (filesystem)
- XDebug (preconfigured for remote debugging especially with JetBrains PhpStorm)
- Xhprof
- phpmd
- phpcs (PHP Codesniffer)

## Planned Features (TYPO3 specific)

- automatic cloning of TYPO3 CMS Core at „first run“
- Git working-dirs for the different maintained branches (Core should only be downloaded once)
- easy2use scripts for install a specific branch
- easy2use backup & restore scripts
- default website „review.local“ like the MAMP Pro Webstart which supports
	- easy execution of install/backup/restore scripts
	- Mailcatcher link


## How to use

TODO

## Author


Josef Florian Glatz <http://jousch.com>