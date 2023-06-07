
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
(assert (is-Cons Nil) )
(assert (or (= l1 l3) (is-Nil l0) (= l1 l1) (= l2 Nil)) )
(assert (and (= l0 Nil) (= l3 Nil) (= l2 Nil)) )
(assert (and (= l2 Nil) (= l2 Nil) (= l3 Nil)) )
(check-sat)