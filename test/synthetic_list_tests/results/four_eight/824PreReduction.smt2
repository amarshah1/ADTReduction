
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
(assert (= l1 Nil) )
(assert (and (is-Nil l0) (= l2 Nil) (is-Nil l3)) )
(assert (or (= l1 l2) (is-Cons Nil) (= l3 Nil)) )
(assert (and (= l0 l2) (= l1 Nil) (= l2 Nil)) )
(assert (is-Nil l2) )
(assert (= l1 Nil) )
(assert (is-Nil l1) )
(assert (is-Cons Nil) )
(check-sat)
