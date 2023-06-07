
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
(assert (= l2 Nil) )
(assert (and (= l3 Nil) (is-Nil l2) (= l0 Nil) (= l0 Nil)) )
(assert (and (= l0 Nil) (= l2 Nil) (is-Cons Nil)) )
(assert (or (= l2 l0) (= l0 Nil) (= l1 l1) (= l3 l2)) )
(check-sat)