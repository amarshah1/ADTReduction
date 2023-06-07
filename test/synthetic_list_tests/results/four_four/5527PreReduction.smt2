
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
(assert (or (is-Cons Nil) (= l3 Nil) (is-Cons Nil) (= l2 Nil)) )
(assert (= l2 Nil) )
(assert (is-Cons Nil) )
(assert (and (= l2 l0) (= l0 Nil) (is-Cons l0) (= l1 Nil)) )
(check-sat)
