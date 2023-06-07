
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
(assert (and (= l0 Nil) (is-Cons l1)) )
(assert (not (= l0 Nil)) )
(assert (or (= l0 Nil) (= l1 Nil) (= l0 l2)) )
(assert (is-Nil l3) )
(assert (and (= l2 Nil) (= l3 l0)) )
(assert (or (= l3 l2) (is-Nil Nil) (= l0 Nil)) )
(assert (and (is-Cons Nil) (= l1 l1)) )
(assert (is-Nil Nil) )
(check-sat)
