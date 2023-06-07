
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
(assert (or (is-Cons Nil) (= l2 Nil) (= l2 Nil) (= l2 l2)) )
(assert (and (= l3 Nil) (= l1 Nil) (is-Nil Nil) (is-Cons l0)) )
(assert (not (= l0 Nil)) )
(assert (is-Nil l0) )
(assert (and (= l1 Nil) (= l3 Nil) (= l2 l2) (= l3 Nil)) )
(assert (and (= l1 Nil) (= l3 Nil)) )
(assert (= l1 Nil) )
(assert (= l2 l1) )
(check-sat)
