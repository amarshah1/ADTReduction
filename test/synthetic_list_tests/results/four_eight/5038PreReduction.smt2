
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
(assert (and (is-Cons Nil) (is-Cons Nil)) )
(assert (is-Cons l2) )
(assert (and (is-Cons Nil) (= l3 Nil) (= l3 Nil) (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil l1) )
(assert (not (= l1 l0)) )
(assert (= l2 Nil) )
(assert (or (is-Cons l1) (= l0 l3)) )
(check-sat)
