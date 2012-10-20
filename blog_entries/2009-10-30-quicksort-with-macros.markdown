---
layout: post
title: "\"quicksort with macros\""
date: 2009-10-30 03:20
comments: true
categories: macroquicksort
---
Not very fancy but I'm putting it here:<br /><br />(defun my-sort (lst)<br />  (let ((pivot (car lst)))<br />    (when lst<br />      (append<br />       (my-sort (sort-helper &gt; pivot (cdr lst)))<br />       (list pivot)<br />       (my-sort (sort-helper &lt;= pivot (cdr lst)))))))<br /><br />(defmacro sort-helper (c p l)<br />  `(remove-if #'(λ (arg) (,c arg ,p)) ,l))<div class="blogger-post-footer"><img width='1' height='1' src='' alt='' /></div>
