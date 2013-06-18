# Flowpack.SingleSignOn Demo Vagrant

Description
===========

A Vagrant setup for a demo installation of the Flowpack.SingeSignOn demo for TYPO3 Flow.

Installation
============

First clone the DemoVagrant repository that contains the Vagrant box setup::

    git clone https://github.com/Flowpack/Flowpack.SingleSignOn.Demo-Vagrant.git DemoVagrant
    cd DemoVagrant

Then install Vagrant_ for your operating system, install the `librarian` gem for downloading bundled cookbooks and start
the vagrant box::

    gem install librarian
    librarian-chef install
      ...
    vagrant up

The virtual machine should now boot and start to provision the demo setup (this can take a while).

Set up host entries in your `/etc/hosts` (or similar file, depending on your operating system)::

    10.11.12.23 ssodemoserver.vagrant
    10.11.12.23 ssodemoinstance.vagrant ssodemoinstance2.vagrant

Browse to http://ssodemoserver.vagrant/ and you should see the demo server frontend. A second instance is available on
http://ssodemoserver2.vagrant/ for running multi-instance acceptance tests.

.. _Vagrant: http://www.vagrantup.com/

Documentation
=============

See http://flowpack-single-sign-on.readthedocs.org/ for the Flowpack Single sign-on documentation.

License
=======

Copyright (c) 2013 Christopher Hlubek, Robert Lemke

Permission is hereby granted, free of charge, to any person obtaining a copy of this
software and associated documentation files (the "Software"), to deal in the
Software without restriction, including without limitation the rights to use, copy,
modify, merge, publish, distribute, sublicense, and/or sell copies of the Software,
and to permit persons to whom the Software is furnished to do so, subject to the
following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF
CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE
OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
