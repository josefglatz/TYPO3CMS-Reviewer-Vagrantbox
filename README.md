TYPO3CMS-Reviewer (WIP)
=================

This project tries to provide an easy & also quick way to review/debug/profile the TYPO3 CMS project.

## Requirements

1. Make sure you have installed Vagrant (<http://vagrantup.com>)
2. Make sure you have installed at least one provider
	1. Oracle VM VirtualBox (Linux, Mac, Windows) (<https://www.virtualbox.org>)
	2. VMware Fusion (Mac) (this is my prefered provider, because it's much faster than VirtualBox)
	3. VMware Workstation (Linux, Windows) (this is my prefered provider, because it's much faster than VirtualBox)

## How to use


4. Cd to project's root in your suggested terminal where you have cloned this repository
5. Start your TYPO3CMS reviewer environment
	1. <pre>vagrant up</pre> for VirtualBox (Mac/Linux/Windows).
	2. <pre>vagrant up --provider vmware_fusion</pre> for VMware Fusion (Mac).
	3. <pre>vagrant up --provider vmware_workstation</pre> for VMware Workstation (Linux/Win).

TODO (This is not the final approach)

HowTo set default vagrant provider <https://docs.vagrantup.com/v2/providers/default.html>


## What's inside

For building you own Vagrantbox the whole Packer configuration is included (for:)

- Ubuntu 14.04 (project's default distribution)	(Public cookbooks must be fetched with Berkshelf >= 3.0)
	- for VMware Fusion (Apple OS X)
	- for VMware Workstation (Linux, Microsoft Windows)
	- for Virtualbox (Apple OS X, Linux, Microsoft Windows)

Installed software:

- Webmin (Web based administration interface for linux noobs)
- MailCatcher.Me (which runs a super simple SMTP server which catches any message sent to it to display in a web interface.)
- Git
- Ruby
- Composer (installed globally)
- GraphicsMagick ("required" by TYPO3)
- MySql Database Server

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

- _DONE_ Apache or Nginx
- _DONE_ MySQL or MariaDB
- Constantly up2date PHP version
- _DONE_ Mailcatcher (http://mailcatcher.me) to easily catch sent mails
- Support for Umlaute (filesystem)
- XDebug (preconfigured for remote debugging especially with JetBrains PhpStorm)
- Xhprof
- phpmd
- phpcs (PHP Codesniffer)
- Globales PhpMyAdmin/Adminer

## Planned Features (TYPO3 specific)

- automatic cloning of TYPO3 CMS Core at „first run“
- Git working-dirs for the different maintained branches (Core should only be downloaded once)
- easy2use scripts for install a specific branch
- easy2use backup & restore scripts
- default website „review.local“ like the MAMP Pro Webstart which supports
	- easy execution of install/backup/restore scripts
	- Mailcatcher link


## Notes

### Webmin

Webmin is a web-based interface for system administration for Unix. Especially for those who don't love working with the console.

### MailCatcher

All emails sent by PHP are intercepted by MailCatcher. So normally no email would be delivered outside of the virtual machine. Instead you can check messages using web frontend for MailCatcher, which is running on port 1080 and also available on every domain:

	http://<guest-ip>:1080

### Composer

Composer binary is installed globally (to `/usr/local/bin`), so you can simply call `composer` from any directory.

## Author

Josef Florian Glatz <http://jousch.com>

## Sponsors & nice websites

- [typo3blog.at](http://typo3blog.at)