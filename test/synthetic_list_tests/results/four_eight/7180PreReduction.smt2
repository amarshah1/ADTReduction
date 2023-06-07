
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
(assert (not (= l1 l0)) )
(assert (and (= l0 l3) (= l0 Nil) (= l2 Nil)) )
(assert (or (is-Cons Nil) (is-Cons l3)) )
(assert (and (= l3 Nil) (= l1 Nil) (= l2 l1)) )
(assert (is-Nil l1) )
(assert (or (= l0 l3) (= l1 Nil) (= l1 l1) (= l3 Nil)) )
(assert (= l0 Nil) )
(assert (or (= l1 Nil) (is-Nil Nil) (= l0 Nil)) )
(check-sat)
