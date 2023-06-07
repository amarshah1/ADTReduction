
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
(assert (and (= l0 l3) (= l0 Nil) (is-Cons l2) (= l1 l3)) )
(assert (or (= l3 Nil) (= l2 l0) (is-Nil l0) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (= l1 Nil) )
(assert (not (= l3 l3)) )
(assert (or (= l2 Nil) (= l0 l0) (= l2 Nil) (= l1 l2)) )
(assert (not (= l0 Nil)) )
(assert (is-Cons Nil) )
(check-sat)
