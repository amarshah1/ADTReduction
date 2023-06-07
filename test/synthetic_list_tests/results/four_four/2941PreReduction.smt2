
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
(assert (= l3 Nil) )
(assert (and (= l2 l1) (is-Nil l1) (= l0 Nil) (= l0 Nil)) )
(assert (or (= l0 Nil) (is-Cons Nil)) )
(assert (and (= l3 Nil) (= l3 Nil) (= l3 l0)) )
(check-sat)
