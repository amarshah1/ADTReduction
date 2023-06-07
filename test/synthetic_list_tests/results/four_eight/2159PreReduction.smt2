
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
(assert (and (= l2 Nil) (is-Nil Nil) (= l1 Nil) (= l1 l1)) )
(assert (and (is-Nil l1) (= l3 l0) (= l2 l3) (= l0 Nil)) )
(assert (is-Nil l0) )
(assert (not (= l1 Nil)) )
(assert (not (= l0 l2)) )
(assert (is-Cons Nil) )
(assert (not (= l2 Nil)) )
(assert (not (is-Cons Nil)) )
(check-sat)