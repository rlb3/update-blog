---
layout: post
title: "\"Notes for perl programmers\""
date: 2009-03-15 13:55
comments: true
categories: perl
---
There is no direct equivalent to split or join in the common lisp standard. But you if you load cl-ppcre package is has a split that works that same as perl. As for join the format command can be used like join<br /><pre><br />(format nil "~{~a~^.~}" '("www" "google" "com"))<br /></pre><br /><br />That evaluates to "www.google.com"<div class="blogger-post-footer"><img width='1' height='1' src='' alt='' /></div>
