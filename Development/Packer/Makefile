########################################################################
#
# This GNU Make makefile is provided to support automated builds.
# It assumes that both GNU Make and Packer are in the PATH.
# Download and install Packer from <http://www.packer.io/downloads.html>
#
########################################################################



# Current valid values: provisionerless | chef | salt
PROVISIONER := chef
# Current valid values: latest | x.y.z | x.y
PROVISIONER_VERSION := latest
# Packer does not allow empty variables, so only pass variables that are defined
ifdef PROVISIONER_VERSION
	PACKER_VARS := -var 'provisioner=${PROVISIONER}' -var 'provisioner_version=$(PROVISIONER_VERSION)'
else
	PACKER_VARS := -var 'provisioner=$(PROVISIONER)'
endif
BUILDER_TYPES = vmware virtualbox
TEMPLATE_PATHS := $(wildcard Template/*/*.json)
TEMPLATE_FILENAMES := $(notdir ${TEMPLATE_PATHS})
TEMPLATE_DIRS := $(dir ${TEMPLATE_PATHS})
BOX_FILENAMES := $(TEMPLATE_FILENAMES:.json=\-$(PROVISIONER)$(PROVISIONER_VERSION).box)
BOX_FILES := $(foreach builder, $(BUILDER_TYPES), $(foreach box_filename, $(BOX_FILENAMES), $(builder)/$(box_filename)))
RM = rm -f

#vpath %.json Template/centos:Template/debian:Template/fedora:Template/freebsd:Template/opensuse:Template/oraclelinux:Template/osx:Template/ubuntu:Template/windows2008r2:Template/windows2012:Template/windows2012r2:Template/windows7:Template/windows8:Template/windows81
vpath %.json Template/fedora:Template/ubuntu

.PHONY: all
all: $(BOX_FILES)

vmware/%-$(PROVISIONER)$(PROVISIONER_VERSION).box: %.json
	cd $(dir $<); \
	rm -rf output-vmware-iso; \
	mkdir -p ../../vmware; \
	packer build -only=vmware-iso $(PACKER_VARS) $(notdir $<)

virtualbox/%-$(PROVISIONER)$(PROVISIONER_VERSION).box: %.json
	cd $(dir $<); \
	rm -rf output-virtualbox-iso; \
	mkdir -p ../../virtualbox; \
	packer build -only=virtualbox-iso $(PACKER_VARS) $(notdir $<)

.PHONY: list
list:
	@for builder in $(BUILDER_TYPES) ; do \
		for box_filename in $(BOX_FILENAMES) ; do \
			echo $$builder/$$box_filename ; \
		done ; \
	done

.PHONY: clean really-clean clean-builders clean-output clean-packer-cache
clean: clean-builders clean-output

really-clean: clean clean-packer-cache

clean-builders:
	@for builder in $(BUILDER_TYPES) ; do \
		if test -d $$builder ; then \
			echo Deleting $$builder ; \
			find $$builder -maxdepth 1 -type f -name "*.box" ! -name .gitignore -exec rm '{}' \; ; \
		fi ; \
	done

clean-output:
	@for Template in $(TEMPLATE_DIRS) ; do \
		for builder in $(BUILDER_TYPES) ; do \
			if test -d $$Template/output-$$builder ; then \
				echo Deleting $$Template/output-$$builder-iso ; \
				$(RM) -rf $$Template/output-$$builder-iso ; \
			fi ; \
		done ; \
	done

clean-packer-cache:
	@for Template in $(TEMPLATE_DIRS) ; do \
		if test -d $$Template/packer_cache ; then \
			echo Deleting $$Template/packer_cache ; \
			$(RM) -rf $$Template/packer_cache ; \
		fi ; \
	done
