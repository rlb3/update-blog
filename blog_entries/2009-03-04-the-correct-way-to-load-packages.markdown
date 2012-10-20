---
layout: post
title: "\"The correct way to load packages\""
date: 2009-03-04 15:04
comments: true
categories: asdf cl-who
---
Ok, I just spent the morning trying to use the cl-who package for html generation. It just wasn't working so I started to read through the code. There is the cl-who.lisp which has the code but there is a package.lisp what that exports symbols into your current package. Lesson learned. Don't use (require) for packages that use asdf. Use the full asdf command.<br /><br /><code>(asdf:operate 'asdf:load-op :cl-who)</code><br /><br />You'll be better off for it.<div class="blogger-post-footer"><img width='1' height='1' src='' alt='' /></div>
