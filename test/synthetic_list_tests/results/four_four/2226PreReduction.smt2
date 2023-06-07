
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
(assert (or (is-Cons Nil) (= l3 Nil) (is-Cons l2) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (and (is-Nil Nil) (is-Cons Nil)) )
(assert (and (= l2 Nil) (= l3 Nil) (= l0 l2)) )
(check-sat)
