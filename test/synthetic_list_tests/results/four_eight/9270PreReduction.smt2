
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
(assert (= l0 Nil) )
(assert (= l1 Nil) )
(assert (not (is-Cons Nil)) )
(assert (or (= l1 l3) (= l0 l2) (= l3 Nil)) )
(assert (is-Nil l3) )
(assert (and (= l3 Nil) (is-Cons Nil) (= l0 l0) (= l2 l1)) )
(assert (is-Nil Nil) )
(assert (or (= l2 l2) (is-Cons Nil) (is-Cons Nil)) )
(check-sat)