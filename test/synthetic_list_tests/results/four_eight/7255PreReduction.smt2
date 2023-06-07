
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
(assert (is-Cons l3) )
(assert (= l1 l3) )
(assert (is-Nil Nil) )
(assert (not (= l0 Nil)) )
(assert (and (= l2 Nil) (is-Nil l3) (is-Cons Nil) (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (or (= l1 l0) (= l1 Nil)) )
(assert (not (is-Cons Nil)) )
(check-sat)
