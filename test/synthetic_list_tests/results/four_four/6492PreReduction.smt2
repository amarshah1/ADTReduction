
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
(assert (and (= l1 Nil) (is-Nil l3) (= l2 Nil) (= l1 l3)) )
(assert (= l1 l0) )
(assert (= l1 l1) )
(assert (or (is-Cons Nil) (= l1 Nil)) )
(check-sat)
