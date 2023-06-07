
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
(assert (not (= l2 Nil)) )
(assert (is-Nil l0) )
(assert (and (= l3 l0) (is-Cons l3) (= l2 Nil)) )
(assert (= l3 Nil) )
(assert (= l3 Nil) )
(assert (and (is-Cons l1) (is-Cons Nil) (= l0 l3) (= l1 Nil)) )
(assert (and (= l1 Nil) (= l0 Nil) (= l3 l0) (= l3 Nil)) )
(assert (is-Nil l0) )
(check-sat)
