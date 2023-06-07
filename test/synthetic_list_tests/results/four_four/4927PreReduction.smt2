
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
(assert (and (= l3 Nil) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (or (is-Cons Nil) (= l0 l2) (is-Cons l2) (= l0 l3)) )
(assert (= l2 Nil) )
(check-sat)