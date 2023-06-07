
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
(assert (or (is-Nil Nil) (is-Cons l1)) )
(assert (or (= l2 Nil) (= l0 l1)) )
(assert (or (is-Nil Nil) (= l1 Nil) (= l3 l2) (is-Nil l1)) )
(assert (or (= l2 Nil) (= l3 Nil) (= l2 l2)) )
(assert (not (= l3 l0)) )
(assert (is-Cons Nil) )
(assert (or (is-Nil Nil) (= l3 l2) (= l3 Nil)) )
(assert (and (= l2 Nil) (= l2 Nil) (= l3 Nil)) )
(check-sat)
