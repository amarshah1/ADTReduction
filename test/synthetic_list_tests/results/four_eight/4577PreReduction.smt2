
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
(assert (and (is-Nil l3) (= l0 Nil)) )
(assert (or (= l2 l1) (= l0 Nil) (= l1 l1) (= l3 Nil)) )
(assert (not (is-Nil l2)) )
(assert (= l1 l1) )
(assert (and (= l0 l3) (= l1 Nil) (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (not (= l0 Nil)) )
(check-sat)