
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
(assert (or (is-Cons l3) (= l3 l3)) )
(assert (or (= l3 Nil) (= l1 l1)) )
(assert (= l1 Nil) )
(assert (is-Cons l2) )
(assert (is-Cons Nil) )
(assert (and (is-Nil l3) (= l2 l2) (= l2 Nil)) )
(assert (not (= l0 Nil)) )
(assert (or (= l1 l1) (= l0 Nil) (= l0 l2)) )
(check-sat)
