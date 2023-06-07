
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
(assert (or (= l3 Nil) (is-Nil l0) (= l3 Nil) (= l2 Nil)) )
(assert (and (= l1 l0) (= l3 Nil) (= l2 l1) (= l3 Nil)) )
(assert (and (= l1 l1) (= l0 Nil) (= l3 Nil)) )
(assert (= l2 Nil) )
(assert (is-Cons Nil) )
(assert (or (= l0 l2) (= l1 l1) (= l1 Nil) (= l2 Nil)) )
(assert (not (= l3 l0)) )
(assert (not (is-Nil l1)) )
(check-sat)
