
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
(assert (and (= l3 Nil) (is-Cons l2)) )
(assert (or (is-Cons Nil) (= l2 Nil) (= l3 Nil)) )
(assert (or (= l2 Nil) (= l3 l2) (= l0 Nil) (is-Nil l2)) )
(assert (not (= l0 Nil)) )
(assert (or (= l2 Nil) (= l0 l1)) )
(assert (is-Nil Nil) )
(assert (not (= l3 Nil)) )
(assert (or (is-Cons l3) (= l3 Nil) (= l2 Nil) (= l0 Nil)) )
(check-sat)
