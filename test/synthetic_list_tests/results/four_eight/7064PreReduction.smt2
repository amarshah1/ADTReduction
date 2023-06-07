
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
(assert (is-Nil l3) )
(assert (not (= l3 Nil)) )
(assert (and (= l3 Nil) (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l0 Nil) (= l1 Nil)) )
(assert (and (= l1 Nil) (= l0 l0) (= l3 Nil) (is-Cons l3)) )
(assert (is-Cons Nil) )
(assert (or (is-Cons Nil) (= l3 l3) (= l1 Nil)) )
(check-sat)
