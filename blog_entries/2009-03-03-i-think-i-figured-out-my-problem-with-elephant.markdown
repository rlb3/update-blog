---
layout: post
title: "\"I think I figured out my problem with elephant\""
date: 2009-03-03 06:09
comments: true
categories: elephant
---
I had been loading elephant like this:<br /><code>(asdf:operate 'asdf:load-op :elephant)</code><br /><br />This is what the documentation says is needed to work but it seems you also need to load the Berkeley DB by doing:<br /><code>(asdf:operate 'asdf:load-op :ele-bdb)</code><br /><br />The fun part was when I noticed the contrib directory and the clsql interface. You need to symlink ele-clsql.asd and ele-sqlite3.asd to ~/.sbcl/system directory and then you can execute:<br /><code>(asdf:operate 'asdf:load-op :ele-clsql)</code><br /><br />Now you can use sqlite3 to store your objects<br /><code>(elephant:open-store '(:CLSQL (:SQLITE3 "/tmp/test.db")))</code><div class="blogger-post-footer"><img width='1' height='1' src='' alt='' /></div>
