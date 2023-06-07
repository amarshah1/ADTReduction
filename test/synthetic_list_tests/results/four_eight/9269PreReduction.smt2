
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
(assert (is-Cons l2) )
(assert (not (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l2 Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (or (is-Nil Nil) (= l3 l2)) )
(assert (= l1 l3) )
(assert (is-Nil l3) )
(check-sat)