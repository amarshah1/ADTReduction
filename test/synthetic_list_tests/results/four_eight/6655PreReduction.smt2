
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
(assert (and (is-Cons l2) (= l1 l1) (is-Cons l2)) )
(assert (and (is-Cons Nil) (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (and (= l3 l3) (= l3 Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (or (= l3 l0) (= l0 Nil) (= l3 Nil) (= l0 Nil)) )
(assert (and (= l2 Nil) (= l2 Nil) (is-Nil Nil) (is-Nil l2)) )
(check-sat)
