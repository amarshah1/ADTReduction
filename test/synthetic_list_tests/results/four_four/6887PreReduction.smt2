
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
(assert (or (= l3 l0) (= l2 Nil) (is-Cons Nil) (= l2 l0)) )
(assert (is-Nil l3) )
(assert (not (= l1 l2)) )
(assert (= l1 Nil) )
(check-sat)
