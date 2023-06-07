
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
(assert (= l1 l0) )
(assert (= l3 Nil) )
(assert (not (= l0 l1)) )
(assert (and (is-Cons l2) (is-Cons l1)) )
(assert (is-Nil Nil) )
(assert (or (is-Cons Nil) (= l1 l1) (= l0 Nil) (= l0 l1)) )
(assert (or (= l0 Nil) (is-Nil l3) (= l0 Nil) (is-Cons Nil)) )
(check-sat)
