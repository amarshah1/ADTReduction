
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
(assert (not (= l3 Nil)) )
(assert (or (is-Cons Nil) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (= l0 Nil) )
(assert (and (= l3 l3) (= l3 l1) (= l0 Nil)) )
(assert (or (is-Cons l2) (= l3 l0) (= l0 Nil)) )
(assert (= l1 l0) )
(assert (or (= l2 Nil) (= l3 Nil)) )
(check-sat)
