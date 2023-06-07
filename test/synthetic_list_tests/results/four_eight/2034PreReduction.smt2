
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
(assert (or (= l3 l3) (is-Nil l3) (is-Cons Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (not (= l3 l3)) )
(assert (= l0 l0) )
(assert (or (= l1 Nil) (= l3 Nil) (is-Cons l0)) )
(assert (is-Cons Nil) )
(assert (and (= l0 Nil) (= l2 Nil) (= l0 Nil)) )
(assert (or (= l1 l3) (= l0 l2) (= l0 Nil)) )
(check-sat)
