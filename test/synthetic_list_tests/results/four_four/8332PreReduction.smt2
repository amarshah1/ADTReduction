
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
(assert (and (is-Cons Nil) (is-Nil l0)) )
(assert (= l2 l0) )
(assert (and (= l2 Nil) (is-Cons Nil)) )
(assert (or (= l0 Nil) (= l3 l3) (= l3 Nil) (= l3 Nil)) )
(check-sat)
