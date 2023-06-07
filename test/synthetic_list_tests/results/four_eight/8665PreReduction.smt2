
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
(assert (not (= l2 l3)) )
(assert (not (= l3 Nil)) )
(assert (= l2 Nil) )
(assert (not (is-Cons Nil)) )
(assert (= l1 Nil) )
(assert (and (= l2 l0) (= l0 l1)) )
(assert (= l2 Nil) )
(assert (or (= l1 Nil) (is-Nil l2) (= l3 Nil) (= l2 Nil)) )
(check-sat)
