
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
(assert (is-Cons Nil) )
(assert (is-Nil l3) )
(assert (or (= l0 l3) (is-Cons Nil)) )
(assert (not (= l1 Nil)) )
(assert (is-Nil l3) )
(assert (= l1 Nil) )
(assert (or (= l0 Nil) (= l2 Nil) (= l1 l2)) )
(assert (or (= l3 Nil) (is-Nil Nil)) )
(check-sat)
