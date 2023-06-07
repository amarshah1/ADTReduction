
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
(assert (or (is-Cons Nil) (= l0 l3) (= l0 l1) (= l3 Nil)) )
(assert (and (= l0 l3) (is-Cons l2) (is-Nil Nil) (is-Cons l0)) )
(assert (and (= l2 l3) (is-Nil Nil) (= l0 Nil) (is-Nil l0)) )
(assert (= l3 Nil) )
(assert (and (is-Nil Nil) (is-Cons Nil) (= l3 Nil) (is-Cons l0)) )
(assert (is-Cons Nil) )
(assert (and (= l1 Nil) (= l0 l3) (= l0 Nil)) )
(assert (not (= l3 Nil)) )
(check-sat)
