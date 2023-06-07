
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
(assert (not (= l0 Nil)) )
(assert (and (is-Cons l3) (is-Cons Nil) (= l0 l3)) )
(assert (or (= l3 Nil) (= l0 l0) (is-Nil l0)) )
(assert (and (= l3 Nil) (= l1 l1) (is-Cons Nil)) )
(assert (or (is-Nil l2) (= l1 Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (= l1 Nil) )
(assert (and (= l2 l3) (= l3 Nil) (is-Cons l2) (= l3 l1)) )
(check-sat)
