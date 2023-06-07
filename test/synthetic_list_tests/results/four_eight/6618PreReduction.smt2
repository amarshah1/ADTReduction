
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
(assert (and (= l0 Nil) (= l3 l1) (= l2 Nil) (is-Cons Nil)) )
(assert (not (= l0 Nil)) )
(assert (not (= l2 l3)) )
(assert (not (is-Cons l0)) )
(assert (or (= l3 Nil) (is-Cons Nil)) )
(assert (and (= l2 Nil) (= l2 Nil) (is-Nil l1) (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil l3) )
(check-sat)
