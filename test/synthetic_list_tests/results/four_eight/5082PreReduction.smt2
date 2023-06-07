
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
(assert (= l1 Nil) )
(assert (or (= l3 Nil) (= l2 l0) (= l0 Nil) (is-Nil Nil)) )
(assert (is-Cons l3) )
(assert (and (= l1 Nil) (is-Nil l2)) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (not (= l2 Nil)) )
(assert (or (= l3 Nil) (is-Cons Nil)) )
(check-sat)
