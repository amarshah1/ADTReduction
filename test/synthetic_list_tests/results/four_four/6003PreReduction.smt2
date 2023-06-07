
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
(assert (is-Nil Nil) )
(assert (and (= l0 Nil) (= l1 l3) (= l2 Nil) (is-Cons Nil)) )
(assert (and (= l2 Nil) (= l2 l1) (is-Cons Nil)) )
(assert (or (is-Cons l3) (is-Cons Nil)) )
(check-sat)
