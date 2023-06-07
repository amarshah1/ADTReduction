
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
(assert (and (= l3 Nil) (is-Cons Nil) (= l3 Nil) (= l0 Nil)) )
(assert (and (is-Cons Nil) (is-Nil Nil) (is-Cons Nil)) )
(assert (not (is-Cons l3)) )
(assert (and (= l0 Nil) (is-Nil l2) (= l1 Nil) (= l2 l3)) )
(check-sat)
