
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
(assert (= l2 l2) )
(assert (not (is-Nil l2)) )
(assert (is-Cons Nil) )
(assert (or (= l2 l1) (is-Nil Nil) (= l1 Nil)) )
(assert (= l3 Nil) )
(assert (not (= l2 Nil)) )
(assert (and (= l3 Nil) (= l2 Nil) (= l1 Nil)) )
(assert (= l2 l1) )
(check-sat)
