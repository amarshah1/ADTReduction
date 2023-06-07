
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
(assert (or (= l3 l3) (= l0 l2) (is-Cons Nil) (is-Cons l0)) )
(assert (not (= l1 Nil)) )
(assert (= l1 Nil) )
(assert (and (is-Cons Nil) (is-Nil Nil) (is-Cons Nil)) )
(check-sat)
