
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
(assert (or (= l1 l2) (is-Cons l3)) )
(assert (not (= l3 l0)) )
(assert (is-Nil l0) )
(assert (is-Cons Nil) )
(assert (and (is-Cons Nil) (is-Cons Nil) (is-Nil Nil) (= l3 l0)) )
(assert (or (= l2 Nil) (= l1 l3) (= l2 Nil)) )
(assert (is-Nil l3) )
(assert (and (is-Cons Nil) (= l2 Nil) (= l3 Nil) (= l1 Nil)) )
(check-sat)
