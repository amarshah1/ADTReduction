
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
(assert (is-Cons l3) )
(assert (or (= l0 Nil) (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil l1) )
(assert (is-Cons l3) )
(assert (and (is-Cons Nil) (= l2 Nil) (is-Cons Nil) (is-Nil l1)) )
(assert (or (is-Nil Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (and (= l3 l2) (= l1 Nil)) )
(check-sat)
