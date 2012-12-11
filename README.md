# TYPO3.SingleSignOn Demo Vagrant

Description
===========

A Vagrant setup for a demo installation of TYPO3.SingeSignOn for Flow.

Requirements
============

Install Vagrant for your operating system (http://vagrantup.com/) and install the `librarian` gem for installing the
bundled cookbooks.

Installation
============

    > librarian-chef install
    > vagrant up

Set up host entries in your /etc/hosts (or similar, depending on your OS):

    /etc/hosts
    ----------------------------------------------
    10.11.12.23 ssodemoserver.vagrant
    10.11.12.23 ssodemoinstance.vagrant

Browse to http://ssodemoserver.vagrant/ and you should see the demo server frontend.

License and Author
==================

- Author::      Christopher Hlubek (<hlubek@networkteam.com>)

- Copyright::   2012, networkteam GmbH

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
