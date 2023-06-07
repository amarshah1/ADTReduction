
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
(assert (is-Cons Nil) )
(assert (and (is-Cons Nil) (= l0 Nil) (= l0 Nil)) )
(assert (is-Cons l0) )
(assert (= l2 Nil) )
(assert (= l0 l2) )
(assert (not (= l0 Nil)) )
(assert (or (= l3 l3) (= l1 Nil)) )
(assert (and (= l3 Nil) (= l2 Nil) (= l3 l3)) )
(check-sat)
