
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
(assert (or (= l2 l1) (= l1 Nil) (= l3 Nil)) )
(assert (or (= l1 Nil) (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (= l1 Nil) )
(assert (= l3 l0) )
(assert (and (= l3 Nil) (is-Nil l0) (= l1 Nil) (= l2 Nil)) )
(assert (or (= l0 Nil) (= l3 Nil) (= l2 Nil) (is-Cons Nil)) )
(assert (and (= l1 l3) (is-Nil Nil) (= l3 l1) (= l2 l1)) )
(check-sat)