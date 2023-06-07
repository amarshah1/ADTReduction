
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
(assert (and (is-Cons Nil) (= l3 l1)) )
(assert (and (= l3 l0) (= l0 Nil) (= l2 Nil) (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l0 l3) (= l2 Nil) (is-Nil l0) (is-Cons l2)) )
(assert (= l1 Nil) )
(assert (and (is-Cons Nil) (= l0 Nil) (= l2 l0) (= l3 l3)) )
(assert (not (= l1 l0)) )
(assert (= l3 l3) )
(check-sat)
