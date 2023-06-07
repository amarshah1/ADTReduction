
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
(assert (= l3 Nil) )
(assert (is-Nil l0) )
(assert (and (= l1 Nil) (= l1 Nil) (= l2 l3) (= l3 l3)) )
(assert (not (= l0 Nil)) )
(assert (and (is-Nil Nil) (= l2 Nil)) )
(assert (or (= l0 l3) (is-Cons Nil)) )
(assert (not (is-Cons l1)) )
(assert (or (= l0 Nil) (= l3 l3) (= l2 Nil)) )
(check-sat)
