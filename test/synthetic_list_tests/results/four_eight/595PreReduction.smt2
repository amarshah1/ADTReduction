
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
(assert (= l1 Nil) )
(assert (is-Nil l3) )
(assert (is-Cons Nil) )
(assert (= l2 Nil) )
(assert (= l0 l2) )
(assert (= l3 Nil) )
(assert (and (= l1 Nil) (= l0 Nil) (= l1 l1)) )
(assert (not (= l2 l0)) )
(check-sat)
