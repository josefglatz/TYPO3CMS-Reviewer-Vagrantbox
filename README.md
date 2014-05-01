TYPO3CMS-Reviewer (WIP)
=================

This project tries to provide an easy & also quick way to review/debug/profile the TYPO3 CMS project.

## How to use

1. Make sure you have installed Vagrant (<http://vagrantup.com>)
2. Make sure you have installed at least Oracle VM VirtualBox (<https://www.virtualbox.org>)
3. (Optional) For best performance use VMWare Fusion (on Mac) or VMWare Workstation (on Windows) (both are not free)
4. Open folder in your suggested terminal
5. Start your TYPO3CMS reviewer environment
	1. <pre>vagrant up</pre> for VirtualBox (Mac/Linux/Windows).
	2. <pre>vagrant up --provider vmware_fusion</pre> for VMware Fusion (Mac).
	3. <pre>vagrant up --provider vmware_workstation</pre> for VMware Workstation (Win).

TODO (This is not the final approach)


## Already solved Features/Tasks

- Initial Packer Configuration
	- Ubuntu 14.04 template (project's default distribution)
		- for VMware Fusion (Apple OS X)
		- for VMware Workstation (Linux, Microsoft Windows)
		- for Virtualbox (Apple OS X, Linux, Microsoft Windows)
- Provisioning
	- Shell
		- some basic (well known) shell scripts to setup the vagrant environment (take a look into ./Development/Packer/Template/ubuntu/script/*.sh for details)
	- chef-solo
		- GraphicsMagick
		- build-essential
		- Git
		- Sqlite
		- Ruby
		- Apache2
- Public cookbooks must be fetched with Berkshelf >= 3.0 (see NOTES.md HowTo section within Development/Packer folder)

## Planned Features (Test Environment)

- Preconfigured ready2use Vagrantbox
	- for
		- _DONE_ VMware Fusion (OSX)
		- _DONE_ Virtualbox (OSX, Windows, Linux)
		- (HyperV (Windows >= 8.1)) *currently not on my agenda*
		- (VMware Workstation (Windows) *currently not on my agenda*
	- _DONE_ included Packer Configuration file(s) (if you want to create custom boxes)
	- included Chef Cookbooks (each of them as standalone git-repo)
	- _DONE_ Ubuntu Linux as default

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



## Author

Josef Florian Glatz <http://jousch.com>

## Sponsors & nice websites

- [typo3blog.at](http://typo3blog.at)