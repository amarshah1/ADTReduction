
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
(assert (and (is-Nil Nil) (is-Cons Nil)) )
(assert (is-Cons l3) )
(assert (or (is-Cons Nil) (is-Cons Nil) (= l2 l2) (= l3 Nil)) )
(assert (and (= l2 Nil) (= l3 Nil) (= l3 l3) (is-Nil Nil)) )
(assert (and (is-Cons l1) (= l0 Nil) (is-Nil l1)) )
(assert (= l1 l0) )
(assert (= l1 Nil) )
(assert (or (= l0 l1) (= l3 Nil)) )
(check-sat)
