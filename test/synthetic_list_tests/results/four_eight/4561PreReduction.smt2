
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
(assert (= l1 l1) )
(assert (and (= l2 l2) (= l1 l2)) )
(assert (and (is-Nil l3) (= l0 Nil) (= l3 Nil) (= l0 Nil)) )
(assert (or (is-Nil l2) (= l3 l0)) )
(assert (= l1 Nil) )
(assert (and (is-Nil Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l1 Nil) (= l3 l1) (= l2 Nil)) )
(check-sat)
