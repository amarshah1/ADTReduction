
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
(assert (= l3 l1) )
(assert (is-Nil Nil) )
(assert (and (= l3 l1) (= l1 Nil) (is-Cons l2)) )
(assert (is-Cons l2) )
(assert (= l1 Nil) )
(assert (and (is-Nil l2) (= l3 Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (and (is-Nil l1) (is-Cons Nil) (= l1 Nil)) )
(assert (or (= l2 Nil) (= l0 l1) (= l2 l2)) )
(check-sat)
