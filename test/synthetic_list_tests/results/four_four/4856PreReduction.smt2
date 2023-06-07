
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
(assert (not (= l1 Nil)) )
(assert (and (is-Cons Nil) (is-Cons Nil)) )
(assert (and (is-Cons l3) (is-Nil l3) (is-Nil l1)) )
(assert (and (= l2 Nil) (is-Nil Nil) (is-Cons Nil) (= l1 Nil)) )
(check-sat)
