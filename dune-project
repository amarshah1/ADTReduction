(lang dune 3.7)
(name reduce)
(package
 (name reduce)
 (synopsis "Reduce and landmark")
 (depends 
  (ocaml (>= 4.08))
  (landmarks-ppx (and :dev (>= 1.4)))
 )
)