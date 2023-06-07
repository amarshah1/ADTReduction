
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
(assert (and (= l2 Nil) (is-Cons Nil)) )
(assert (not (= l2 Nil)) )
(assert (or (= l3 Nil) (= l1 Nil) (= l1 Nil)) )
(assert (= l3 Nil) )
(assert (= l1 l0) )
(assert (or (= l3 Nil) (= l0 Nil)) )
(assert (and (is-Cons Nil) (= l0 Nil) (= l0 l3)) )
(assert (is-Nil l2) )
(check-sat)
