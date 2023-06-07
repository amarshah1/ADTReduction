
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
(assert (= l0 Nil) )
(assert (is-Nil l0) )
(assert (= l3 Nil) )
(assert (and (is-Cons Nil) (= l1 Nil)) )
(assert (and (= l2 Nil) (= l3 l1) (= l1 Nil) (= l3 Nil)) )
(assert (not (= l1 Nil)) )
(assert (or (is-Cons l1) (is-Nil l1) (= l2 Nil) (= l2 l2)) )
(assert (and (is-Nil Nil) (= l2 l3) (= l1 Nil) (= l1 Nil)) )
(check-sat)
