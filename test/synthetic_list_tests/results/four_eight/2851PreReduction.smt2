
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
(assert (or (is-Cons l1) (= l1 Nil) (= l1 l2) (= l3 l2)) )
(assert (and (= l3 Nil) (= l1 Nil) (= l2 l0)) )
(assert (or (= l1 Nil) (= l0 l1)) )
(assert (or (is-Cons l3) (= l0 Nil)) )
(assert (= l1 l0) )
(assert (= l2 Nil) )
(assert (is-Cons Nil) )
(assert (not (= l0 Nil)) )
(check-sat)
