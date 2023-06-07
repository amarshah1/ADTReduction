
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
(assert (or (= l2 l3) (= l2 Nil)) )
(assert (and (= l1 Nil) (is-Cons Nil) (= l1 Nil) (= l0 l0)) )
(assert (or (= l1 l2) (= l0 l0) (is-Cons Nil)) )
(assert (is-Cons l2) )
(check-sat)
