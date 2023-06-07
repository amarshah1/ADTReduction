
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
(assert (or (= l1 Nil) (= l3 l3) (= l3 l3)) )
(assert (or (= l2 Nil) (= l0 Nil) (is-Nil l3) (= l1 l3)) )
(assert (and (= l2 Nil) (is-Nil Nil)) )
(assert (and (= l2 l2) (is-Nil l1) (= l2 l0) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l3 Nil) (is-Cons Nil) (= l0 l2) (= l1 l0)) )
(assert (= l1 l2) )
(assert (= l3 Nil) )
(check-sat)
