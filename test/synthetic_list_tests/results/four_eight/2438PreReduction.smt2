
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
(assert (and (= l0 Nil) (is-Cons Nil) (is-Cons Nil) (= l2 Nil)) )
(assert (= l1 Nil) )
(assert (and (is-Nil Nil) (= l2 l2) (= l3 Nil) (= l2 Nil)) )
(assert (not (= l2 Nil)) )
(assert (not (is-Nil l2)) )
(assert (or (= l1 l0) (= l0 Nil)) )
(assert (and (= l0 l2) (= l0 Nil) (= l1 l3) (is-Nil l0)) )
(assert (= l3 l3) )
(check-sat)
