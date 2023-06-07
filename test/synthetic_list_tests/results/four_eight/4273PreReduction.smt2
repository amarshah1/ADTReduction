
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
(assert (not (= l3 l3)) )
(assert (or (= l0 Nil) (= l0 Nil) (= l2 Nil) (= l0 l1)) )
(assert (= l3 Nil) )
(assert (and (= l0 l0) (is-Nil l2)) )
(assert (is-Cons l3) )
(assert (is-Nil Nil) )
(assert (and (= l1 Nil) (is-Cons Nil) (= l3 Nil) (= l3 Nil)) )
(check-sat)
