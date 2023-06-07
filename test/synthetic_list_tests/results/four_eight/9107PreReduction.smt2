
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
(assert (= l1 l1) )
(assert (and (= l0 Nil) (= l1 Nil)) )
(assert (and (is-Cons l1) (= l2 Nil)) )
(assert (or (is-Cons l3) (= l3 l1) (= l3 l2) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (not (= l2 l3)) )
(assert (and (is-Nil l1) (= l2 Nil) (= l2 Nil) (is-Nil l1)) )
(assert (= l0 Nil) )
(check-sat)
