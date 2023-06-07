
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
(assert (= l3 Nil) )
(assert (or (= l2 Nil) (= l2 l2)) )
(assert (or (= l3 l1) (= l1 l0)) )
(assert (and (= l2 Nil) (= l1 Nil) (is-Cons Nil) (= l2 Nil)) )
(assert (or (is-Nil l2) (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (and (= l3 Nil) (= l3 l3) (is-Nil l3) (= l0 l2)) )
(check-sat)
