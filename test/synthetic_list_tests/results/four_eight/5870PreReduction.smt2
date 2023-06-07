
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
(assert (not (= l1 Nil)) )
(assert (and (is-Nil Nil) (= l0 Nil) (= l2 l3) (is-Cons Nil)) )
(assert (= l1 Nil) )
(assert (= l1 Nil) )
(assert (is-Cons Nil) )
(assert (= l3 l0) )
(assert (not (is-Cons Nil)) )
(assert (or (is-Cons Nil) (is-Nil l3)) )
(check-sat)
