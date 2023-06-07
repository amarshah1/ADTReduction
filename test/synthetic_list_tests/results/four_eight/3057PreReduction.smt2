
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
(assert (and (= l0 Nil) (= l2 Nil)) )
(assert (not (= l1 l1)) )
(assert (is-Cons Nil) )
(assert (= l0 l3) )
(assert (is-Nil l2) )
(assert (is-Cons Nil) )
(assert (or (is-Nil l1) (= l1 Nil)) )
(assert (= l2 Nil) )
(check-sat)
