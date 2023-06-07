
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
(assert (is-Cons Nil) )
(assert (is-Cons l1) )
(assert (not (= l0 Nil)) )
(assert (and (is-Cons Nil) (is-Cons l3) (= l1 l1) (is-Nil l2)) )
(assert (= l1 l3) )
(assert (or (= l0 Nil) (is-Cons l1) (is-Nil Nil) (= l0 Nil)) )
(assert (or (= l2 Nil) (is-Nil Nil)) )
(assert (and (is-Nil Nil) (= l2 l3) (is-Cons Nil) (= l0 Nil)) )
(check-sat)
