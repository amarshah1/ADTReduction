
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
(assert (= l3 l2) )
(assert (and (is-Cons Nil) (= l3 Nil)) )
(assert (= l1 Nil) )
(assert (and (= l2 l1) (= l0 Nil)) )
(assert (not (= l3 l2)) )
(assert (= l2 l3) )
(assert (or (= l1 l0) (is-Cons l3) (= l0 Nil) (= l0 Nil)) )
(assert (and (= l1 Nil) (= l1 Nil) (is-Cons l2) (is-Nil l2)) )
(check-sat)
