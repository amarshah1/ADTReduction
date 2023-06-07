
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun l2 () MyList) 
(declare-fun l3 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (or (= l1 Nil) (= l1 Nil) (= l3 Nil)) )
(assert (not (= l0 Nil)) )
(assert (and (= l1 Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (or (is-Cons Nil) (is-Nil l2) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Nil l1) )
(assert (is-Cons l2) )
(assert (or (= l2 Nil) (= l3 Nil) (= l2 Nil)) )
(check-sat)
