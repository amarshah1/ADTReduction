
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
(assert (and (is-Cons Nil) (= l3 Nil) (= l0 l3) (= l1 l0)) )
(assert (is-Nil Nil) )
(assert (is-Nil l2) )
(assert (or (= l3 Nil) (is-Nil Nil)) )
(assert (and (= l1 Nil) (is-Cons Nil)) )
(assert (not (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (not (= l3 l3)) )
(check-sat)
