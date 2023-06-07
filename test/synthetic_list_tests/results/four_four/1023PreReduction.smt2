
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
(assert (or (is-Cons Nil) (= l2 l1) (is-Cons Nil)) )
(assert (and (= l0 l3) (= l3 l2)) )
(assert (= l1 l2) )
(assert (is-Cons l0) )
(check-sat)
