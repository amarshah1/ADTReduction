
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
(assert (not (is-Nil l3)) )
(assert (is-Nil Nil) )
(assert (and (is-Cons Nil) (= l0 Nil) (= l1 Nil) (= l1 Nil)) )
(assert (and (= l3 Nil) (= l2 Nil) (= l3 Nil) (is-Cons Nil)) )
(assert (= l0 l2) )
(assert (= l3 l1) )
(assert (and (= l1 Nil) (= l1 l2)) )
(assert (is-Cons Nil) )
(check-sat)
