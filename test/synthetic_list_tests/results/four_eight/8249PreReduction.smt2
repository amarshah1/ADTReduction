
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
(assert (and (= l1 l0) (is-Cons Nil)) )
(assert (not (is-Nil Nil)) )
(assert (is-Cons l3) )
(assert (not (= l1 Nil)) )
(assert (= l3 l1) )
(assert (is-Cons Nil) )
(assert (is-Nil l2) )
(assert (is-Cons Nil) )
(check-sat)
