
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
(assert (and (= l3 l2) (is-Cons Nil) (is-Nil l1)) )
(assert (is-Cons Nil) )
(assert (and (= l2 Nil) (is-Nil Nil) (= l1 l3) (is-Nil Nil)) )
(assert (or (= l0 l1) (= l0 l1) (= l3 Nil)) )
(assert (and (= l3 Nil) (= l0 l3) (is-Nil l2)) )
(assert (is-Cons Nil) )
(assert (and (is-Nil Nil) (is-Cons l1) (is-Nil l0)) )
(assert (and (= l1 Nil) (= l2 Nil) (is-Cons Nil) (= l3 l0)) )
(check-sat)
