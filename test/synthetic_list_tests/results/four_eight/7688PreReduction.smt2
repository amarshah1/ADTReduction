
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
(assert (and (is-Cons Nil) (= l2 Nil) (= l3 Nil)) )
(assert (is-Cons Nil) )
(assert (or (is-Cons Nil) (= l2 l3)) )
(assert (is-Nil l0) )
(assert (not (= l0 l2)) )
(assert (or (is-Nil Nil) (= l1 l3) (= l1 l0) (is-Cons Nil)) )
(assert (= l2 l2) )
(assert (not (= l0 Nil)) )
(check-sat)
