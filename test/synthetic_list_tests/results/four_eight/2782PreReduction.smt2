
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
(assert (and (= l1 l3) (is-Cons l0) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (and (= l3 Nil) (= l2 Nil)) )
(assert (and (= l1 l3) (is-Cons Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (is-Nil l2) )
(assert (and (= l3 l3) (= l1 l1) (= l2 Nil) (is-Cons Nil)) )
(assert (and (= l1 Nil) (is-Cons Nil) (is-Cons l2)) )
(check-sat)
