
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
(assert (and (= l3 l3) (= l0 Nil) (= l0 Nil)) )
(assert (is-Nil l1) )
(assert (is-Cons Nil) )
(assert (or (is-Cons Nil) (= l2 Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (not (is-Nil Nil)) )
(assert (not (= l1 l3)) )
(assert (is-Nil Nil) )
(check-sat)
