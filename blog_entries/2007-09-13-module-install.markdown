---
layout: post
title: "\"Module::Install\""
date: 2007-09-13 11:42
comments: true
categories: Uncategorized
---
I'm starting to use "Module::Install":http://search.cpan.org/dist/Module-Install/ for my perl projects. There are some good reasons to use it:

* Extremely easy for beginners to learn
* Does everything ExtUtils::MakeMaker does.
* Does it with a dramatically simpler syntax.
* Automatically scans for metadata for you.
* Requires no installation for end-users.
* Generates a stock Build.PL for Module::Build users.
* Guaranteed forward-compatibility.
* Automatically updates your MANIFEST.
* Distributing scripts is easy.
* Include prerequisite modules (less dependencies to install)
* Auto-installation of prerequisites.
* Support for Inline-based modules.
* Support for File::ShareDir shared data files
* Support for precompiled PAR binaries.
* Deals with Win32 install issues for you.
