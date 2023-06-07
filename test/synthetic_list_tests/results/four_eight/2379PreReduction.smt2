
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
(assert (and (= l0 l1) (is-Nil l3)) )
(assert (and (= l1 Nil) (= l0 Nil)) )
(assert (or (= l1 Nil) (is-Nil Nil)) )
(assert (not (= l0 Nil)) )
(assert (and (is-Cons Nil) (= l1 Nil)) )
(assert (not (= l2 l3)) )
(assert (= l2 Nil) )
(assert (and (is-Cons Nil) (= l1 l3) (= l2 Nil)) )
(check-sat)
