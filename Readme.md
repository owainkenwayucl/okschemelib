# Very OK (i.e. bad) implementations of things in Scheme.

A bunch of versions of Scheme are missing things like `range` and `map` (a good example is LispMe lacks both, chicken lacks `range`).  This repo contains a `.scm` file with bad (performance) but working equivalents, prepended with `ok` (so they don't get in the way of the built-ins your version of scheme has).  

I test this with Gambit, Guile, Racket and Chicken (and sometimes LispMe).

To use this functions just load the scheme file e.g.:

```scheme
Gambit v4.2.8

> (load "oklib.scm")
"/home/uccaoke/Source/okschemelib/oklib.scm"
> (okmap (lambda (x) (+ x 1)) (okrange 0.5 10 1))  
(1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5)
> 
```

