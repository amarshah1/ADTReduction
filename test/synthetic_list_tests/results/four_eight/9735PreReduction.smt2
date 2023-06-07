
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
(assert (= l1 l3) )
(assert (and (is-Nil Nil) (is-Nil Nil) (= l0 Nil) (= l3 Nil)) )
(assert (and (is-Nil l0) (= l0 Nil) (= l3 Nil) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (is-Cons l3) )
(assert (is-Cons Nil) )
(assert (and (is-Cons Nil) (= l1 Nil) (= l0 Nil) (= l2 Nil)) )
(check-sat)
