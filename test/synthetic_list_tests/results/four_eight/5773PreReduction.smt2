
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
(assert (is-Cons Nil) )
(assert (= l1 Nil) )
(assert (and (= l0 Nil) (is-Nil l1) (= l2 Nil)) )
(assert (not (= l3 l1)) )
(assert (and (= l2 l1) (is-Nil Nil) (is-Cons Nil) (= l1 Nil)) )
(assert (= l1 Nil) )
(assert (= l0 Nil) )
(assert (and (= l3 Nil) (= l3 Nil) (= l2 l3)) )
(check-sat)
