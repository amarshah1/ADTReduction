
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
(assert (is-Nil l0) )
(assert (or (= l0 Nil) (is-Cons Nil) (= l3 l0)) )
(assert (not (= l1 Nil)) )
(assert (or (is-Cons Nil) (= l3 l2) (= l0 Nil)) )
(check-sat)
