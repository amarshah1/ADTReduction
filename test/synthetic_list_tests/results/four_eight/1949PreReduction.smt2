
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
(assert (is-Nil l3) )
(assert (is-Nil Nil) )
(assert (and (is-Nil l0) (is-Cons Nil) (is-Cons Nil) (= l3 l1)) )
(assert (not (is-Cons Nil)) )
(assert (is-Nil l0) )
(assert (and (is-Nil Nil) (is-Cons l1)) )
(assert (or (= l0 Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (not (is-Cons l1)) )
(check-sat)
