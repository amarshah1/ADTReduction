
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
(assert (and (= l2 Nil) (= l0 Nil) (= l2 l2) (is-Cons Nil)) )
(assert (or (is-Cons l3) (= l2 Nil) (= l3 Nil)) )
(assert (not (= l0 Nil)) )
(assert (is-Cons l3) )
(check-sat)