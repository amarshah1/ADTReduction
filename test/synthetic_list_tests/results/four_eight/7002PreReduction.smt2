
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
(assert (or (is-Nil Nil) (= l2 Nil) (is-Nil Nil)) )
(assert (and (= l2 Nil) (is-Cons l2) (= l2 Nil)) )
(assert (= l3 l2) )
(assert (or (= l2 l1) (is-Nil l1)) )
(assert (or (= l1 Nil) (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (not (= l3 Nil)) )
(assert (and (= l1 l2) (= l1 Nil) (= l3 Nil) (is-Cons Nil)) )
(check-sat)
