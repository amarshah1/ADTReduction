
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
(assert (or (= l3 Nil) (= l2 l1) (= l0 l3) (is-Cons Nil)) )
(assert (or (is-Cons l1) (= l0 Nil) (= l3 l1)) )
(assert (and (= l1 l0) (= l0 Nil) (= l3 l1) (= l2 Nil)) )
(assert (= l1 l3) )
(assert (and (= l2 Nil) (= l1 l3)) )
(assert (= l3 l0) )
(assert (not (= l2 Nil)) )
(assert (= l3 l2) )
(check-sat)
