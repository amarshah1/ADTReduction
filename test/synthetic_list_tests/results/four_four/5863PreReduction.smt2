
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
(assert (and (is-Cons Nil) (= l2 Nil) (= l2 Nil) (= l0 l0)) )
(assert (or (is-Nil l1) (= l3 l3)) )
(assert (not (= l0 Nil)) )
(assert (is-Cons Nil) )
(check-sat)
