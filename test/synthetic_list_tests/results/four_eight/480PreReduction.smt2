
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
(assert (is-Cons l2) )
(assert (= l2 Nil) )
(assert (or (is-Cons l0) (is-Nil l2) (= l3 l3) (= l1 l1)) )
(assert (and (= l1 Nil) (= l3 Nil)) )
(assert (= l3 Nil) )
(assert (or (= l1 l3) (= l1 Nil) (= l1 l2) (= l1 l1)) )
(assert (is-Nil l3) )
(assert (is-Cons l1) )
(check-sat)
