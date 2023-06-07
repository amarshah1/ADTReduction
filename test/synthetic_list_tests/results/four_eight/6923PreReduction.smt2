
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
(assert (or (is-Cons l2) (= l0 Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (or (= l3 Nil) (= l1 Nil) (= l0 l1)) )
(assert (or (is-Cons Nil) (= l2 Nil)) )
(assert (or (= l0 Nil) (is-Nil Nil)) )
(assert (not (is-Cons Nil)) )
(assert (= l2 Nil) )
(assert (= l1 Nil) )
(assert (= l1 Nil) )
(check-sat)