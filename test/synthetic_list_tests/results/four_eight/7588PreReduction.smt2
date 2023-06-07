
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
(assert (not (is-Cons Nil)) )
(assert (and (is-Nil Nil) (= l3 Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (= l0 Nil) )
(assert (and (is-Cons l3) (is-Cons l3) (= l2 l2) (= l1 Nil)) )
(assert (and (= l2 Nil) (is-Nil l2) (= l0 Nil)) )
(assert (and (= l1 Nil) (= l0 l1) (is-Cons Nil)) )
(assert (= l3 Nil) )
(assert (= l1 Nil) )
(check-sat)
