
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
(assert (not (= l3 l3)) )
(assert (or (is-Cons l2) (= l2 Nil) (= l0 Nil) (= l3 l1)) )
(assert (is-Nil l2) )
(assert (= l2 Nil) )
(assert (and (= l2 Nil) (is-Cons l2) (= l2 Nil) (= l3 l2)) )
(assert (or (= l2 Nil) (is-Nil l2) (is-Cons l0)) )
(assert (= l3 Nil) )
(assert (is-Cons Nil) )
(check-sat)
