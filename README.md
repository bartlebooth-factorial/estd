# estd: Common Lisp utility library

This library is a collection of functions and macros that provide some
functionality missing from the Common Lisp standard library that I found useful
in my CL work; in fact, most of the stuff in estd was included because I had
written it as a utility in multiple different projects and wanted a conveient
place to put it so that I could easily use it anywhere.

Contents
---
queue.lisp
: A very basic queue data structure intended for use in recursive functions

sections.lisp
: Functions for getting sections of a list relative to an element or a
  predicate match (e.g. before, after, between)

stack.lisp
: A very basic stack data structure intended for use in recursive functions

