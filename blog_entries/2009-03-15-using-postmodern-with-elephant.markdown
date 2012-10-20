---
layout: post
title: "\"Using postmodern with elephant\""
date: 2009-03-15 20:32
comments: true
categories: elephantposgresqlpostmodern
---
<pre><br /><ol><br />    <li>createdb db</li><br />    <li>createlang -d db plpgsql</li><br />    <li>(elephant:open-store '(:postmodern (:postgresql "127.0.0.1" "db" "user" "passwd")))</li><br /></ol><br /></pre><div class="blogger-post-footer"><img width='1' height='1' src='' alt='' /></div>
