
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
(assert (or (= l1 l1) (= l0 Nil) (is-Nil l0)) )
(assert (is-Nil l3) )
(assert (and (= l3 Nil) (is-Nil l2) (= l1 Nil)) )
(assert (and (= l1 l0) (= l0 l3) (= l1 Nil) (is-Cons l2)) )
(assert (= l0 Nil) )
(assert (is-Cons Nil) )
(assert (= l3 Nil) )
(assert (= l2 Nil) )
(check-sat)
