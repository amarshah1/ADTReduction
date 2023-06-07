
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
(assert (not (= l0 Nil)) )
(assert (is-Nil l3) )
(assert (is-Cons Nil) )
(assert (and (= l2 Nil) (= l3 Nil)) )
(assert (not (= l1 l0)) )
(assert (= l0 l1) )
(assert (= l3 l2) )
(assert (= l2 Nil) )
(check-sat)
