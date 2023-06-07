
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
(assert (and (is-Nil l3) (= l3 l0) (= l1 Nil) (is-Nil l2)) )
(assert (not (= l2 l1)) )
(assert (and (= l1 Nil) (is-Cons Nil) (= l2 Nil) (= l2 l3)) )
(check-sat)
