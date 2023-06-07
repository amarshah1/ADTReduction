
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
(assert (and (= l1 Nil) (is-Nil Nil) (= l1 Nil)) )
(assert (and (is-Cons l0) (is-Cons l0) (= l0 l3) (= l3 l2)) )
(assert (or (is-Cons Nil) (is-Nil l1)) )
(check-sat)
