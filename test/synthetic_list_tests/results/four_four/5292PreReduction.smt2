
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
(assert (and (= l2 Nil) (is-Nil l0) (is-Cons Nil) (= l1 l2)) )
(assert (= l0 Nil) )
(assert (or (is-Cons Nil) (is-Nil l1) (= l2 Nil)) )
(assert (= l2 l3) )
(check-sat)
