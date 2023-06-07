
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
(assert (or (= l3 l3) (= l3 Nil)) )
(assert (is-Cons Nil) )
(assert (and (is-Nil l0) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (= l3 Nil) )
(assert (and (= l3 Nil) (= l3 Nil) (is-Cons Nil)) )
(assert (and (= l1 l1) (= l2 Nil)) )
(assert (not (= l0 Nil)) )
(check-sat)
