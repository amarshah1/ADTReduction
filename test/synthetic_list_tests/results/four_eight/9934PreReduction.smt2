
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
(assert (not (is-Nil l0)) )
(assert (or (is-Nil l1) (= l3 Nil)) )
(assert (or (= l0 Nil) (= l1 l0) (= l2 l1) (= l1 Nil)) )
(assert (= l1 Nil) )
(assert (not (= l3 Nil)) )
(assert (or (is-Cons Nil) (= l0 Nil) (= l3 l2)) )
(assert (= l1 Nil) )
(check-sat)
