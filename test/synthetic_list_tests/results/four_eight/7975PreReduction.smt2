
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
(assert (not (= l2 Nil)) )
(assert (and (is-Nil l2) (is-Cons l2)) )
(assert (and (= l3 l3) (= l2 Nil) (= l1 Nil)) )
(assert (or (= l0 l2) (= l0 Nil) (= l0 Nil)) )
(assert (is-Cons l1) )
(assert (is-Cons Nil) )
(assert (or (= l2 Nil) (is-Nil Nil) (= l2 Nil) (= l3 Nil)) )
(check-sat)
