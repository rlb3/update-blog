---
layout: post
title: "\"Executing unix commands\""
date: 2009-03-30 01:55
comments: true
categories: run-programsbcl
---
One thing that I had a hard time finding was how to execute a unix command from lisp. It appears that every lisp does this differently. If you want details on how sbcl does this execute this in the REPL:<br /><br /><pre>(describe 'sb-ext:run-program)</pre><br /><br />But for a quick example from how to read the contents of a directory:<br /><br /><pre><br />(with-open-stream (files <br />    (sb-ext:process-output <br />        (sb-ext:run-program "/bin/ls" '("-l" "/tmp/") :output :stream))) <br />            (loop :for line = (read-line files nil nil) <br />                     :while line :do (princ line) (terpri)))<br /></pre><div class="blogger-post-footer"><img width='1' height='1' src='' alt='' /></div>
