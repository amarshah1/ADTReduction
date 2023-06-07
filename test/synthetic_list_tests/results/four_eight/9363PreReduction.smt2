
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
(assert (not (= l2 l0)) )
(assert (and (is-Cons l0) (is-Cons l1) (= l1 Nil) (= l3 Nil)) )
(assert (= l2 Nil) )
(assert (not (is-Cons l2)) )
(assert (and (= l3 Nil) (= l2 l3) (= l3 Nil) (= l0 Nil)) )
(assert (is-Cons l2) )
(assert (and (= l0 Nil) (= l1 Nil) (= l2 Nil)) )
(check-sat)