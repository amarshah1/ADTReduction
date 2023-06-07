
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
(assert (or (= l3 Nil) (is-Nil l0)) )
(assert (and (is-Nil Nil) (= l3 Nil)) )
(assert (not (= l2 Nil)) )
(assert (= l1 l0) )
(assert (is-Nil l3) )
(assert (is-Cons Nil) )
(assert (is-Cons l3) )
(assert (not (= l1 Nil)) )
(check-sat)
