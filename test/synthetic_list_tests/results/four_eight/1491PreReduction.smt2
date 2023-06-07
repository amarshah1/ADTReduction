
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
(assert (= l3 l1) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (is-Nil l0) )
(assert (or (= l3 Nil) (= l1 Nil)) )
(assert (and (= l0 Nil) (= l2 Nil)) )
(assert (not (= l1 Nil)) )
(assert (is-Nil l1) )
(check-sat)
