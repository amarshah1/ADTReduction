
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
(assert (and (is-Cons Nil) (= l3 Nil) (is-Cons Nil) (= l1 l3)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (is-Nil l3) )
(assert (or (= l3 l1) (= l2 l3) (= l0 l0) (= l2 Nil)) )
(assert (not (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (= l1 Nil) )
(check-sat)
