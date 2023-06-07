
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
(assert (and (= l3 Nil) (= l3 Nil) (= l1 Nil) (= l3 Nil)) )
(assert (and (is-Cons Nil) (is-Nil l3) (= l1 Nil) (is-Nil Nil)) )
(assert (and (is-Cons l2) (= l1 Nil)) )
(assert (and (= l3 l3) (is-Cons Nil)) )
(assert (= l1 l3) )
(assert (is-Nil Nil) )
(assert (is-Nil l1) )
(assert (and (is-Nil Nil) (= l1 Nil) (= l2 l0) (= l1 Nil)) )
(check-sat)
