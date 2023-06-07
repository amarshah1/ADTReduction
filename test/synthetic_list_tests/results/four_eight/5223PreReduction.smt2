
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
(assert (and (= l3 Nil) (= l3 Nil)) )
(assert (and (= l1 Nil) (is-Nil Nil) (= l2 l2)) )
(assert (or (is-Cons Nil) (= l1 l0) (is-Cons l1)) )
(assert (or (is-Nil l0) (= l0 Nil) (is-Cons Nil) (is-Nil l2)) )
(assert (and (is-Cons Nil) (= l1 l2) (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (= l1 Nil) )
(check-sat)