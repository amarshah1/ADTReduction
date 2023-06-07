
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
(assert (or (is-Cons l2) (is-Nil Nil)) )
(assert (and (= l2 Nil) (= l1 l3)) )
(assert (not (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (not (is-Cons Nil)) )
(assert (and (is-Nil l2) (= l1 l3) (= l1 Nil) (= l3 Nil)) )
(assert (and (= l1 Nil) (= l0 Nil) (= l3 Nil)) )
(assert (or (= l1 Nil) (is-Cons Nil) (is-Cons Nil)) )
(check-sat)
