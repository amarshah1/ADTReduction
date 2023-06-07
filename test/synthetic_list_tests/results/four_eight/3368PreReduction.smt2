
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
(assert (= l1 Nil) )
(assert (or (= l3 Nil) (= l1 Nil)) )
(assert (or (= l1 Nil) (= l1 Nil) (= l1 Nil)) )
(assert (is-Nil l3) )
(assert (= l0 l2) )
(assert (is-Nil Nil) )
(assert (not (is-Cons Nil)) )
(assert (and (is-Cons Nil) (is-Cons l3)) )
(check-sat)
